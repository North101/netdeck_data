import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import '/api_data.dart';
import '/database.dart';
import '/netdeck_data.dart';

final rotationFile = File('data/rotations.json');

Future<ApiResult<List<RotationApiData>>> readRotationApi() async =>
    ApiResult.fromJson(jsonDecode(await rotationFile.readAsString()), (json) {
      return (json as List) //
          .map((e) => RotationApiData.fromJson((e as Map).cast())) //
          .toList();
    });

Future<void> writeRotationApi(ApiResult<List<RotationApiData>> rotationApi) =>
    rotationFile.writeAsString(jsonEncode(rotationApi.toJson((value) {
      return value //
          .map((e) => e.toJson()) //
          .toList();
    })));

Future<void> updateRotation(Database db, DateTime now) async {
  final rotationList = await db.select(db.rotation).get();
  final rotationCycleList = await db.select(db.rotationCycle).get();

  final newRotationApi = await readRotationApi();
  final newRotationApiData = [
    for (final rotation in newRotationApi.data)
      rotation.copyWith(
        current: newRotationApi.data.forFormat(rotation.formatCode).isCurrent(now, rotation.dateStart),
        latest: newRotationApi.data.forFormat(rotation.formatCode).isLatest(rotation.dateStart),
      ),
  ];
  final oldRotationApiData = [
    for (final rotation in rotationList)
      RotationApiData(
        code: rotation.code,
        dateStart: rotation.dateStart,
        formatCode: rotation.formatCode,
        name: rotation.name,
        current: rotationList.forFormat(rotation.formatCode).isCurrent(now, rotation.dateStart),
        latest: rotationList.forFormat(rotation.formatCode).isLatest(rotation.dateStart),
        rotated: rotationCycleList
            .where((e) => e.rotationCode == rotation.code) //
            .map((e) => e.cycleCode) //
            .toList(),
      ),
  ];
  await writeRotationApi(newRotationApi.copyWith(
    data: newRotationApiData,
    lastUpdated: const DeepCollectionEquality().equals(oldRotationApiData, newRotationApiData)
        ? newRotationApi.lastUpdated
        : now,
    versionNumber: '2.0',
    success: true,
    total: newRotationApiData.length,
  ));

  await db.batch((b) {
    b.deleteAll(db.rotation);
    b.insertAll(db.rotation, [
      for (final rotation in newRotationApi.data)
        RotationData(
          code: rotation.code,
          formatCode: rotation.formatCode,
          name: rotation.name,
          dateStart: rotation.dateStart,
        ),
    ]);

    b.deleteAll(db.rotationCycle);
    b.insertAll(db.rotationCycle, [
      for (final rotation in newRotationApi.data)
        for (final rotationCycle in rotation.rotated)
          RotationCycleData(
            rotationCode: rotation.code,
            cycleCode: rotationCycle,
          ),
    ]);
  });
}

extension on Iterable<DateTime> {
  bool isLatest(DateTime? value) => isEmpty ? false : reduce((a, b) => a.isAfter(b) ? a : b) == value;

  bool isCurrent(DateTime now, DateTime? value) => where((e) => !e.isAfter(now)).isLatest(value);
}

extension on List<RotationData> {
  Iterable<DateTime> forFormat(String formatCode) => where((e) => e.formatCode == formatCode) //
      .map((e) => e.dateStart) //
      .whereNotNull();
}

extension on List<RotationApiData> {
  Iterable<DateTime> forFormat(String formatCode) => where((e) => e.formatCode == formatCode) //
      .map((e) => e.dateStart) //
      .whereNotNull();
}
