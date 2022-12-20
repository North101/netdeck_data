import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import '/netdeck_data.dart';
import '/api_data.dart';
import '/database.dart';

final formatFile = File('data/formats.json');

Future<ApiResult<List<FormatApiData>>> readFormatApi() async =>
    ApiResult.fromJson(jsonDecode(await formatFile.readAsString()), (json) {
      return (json as List) //
          .map((e) => FormatApiData.fromJson((e as Map).cast())) //
          .toList();
    });

Future<void> writeFormatApi(ApiResult<List<FormatApiData>> formatApi) =>
    formatFile.writeAsString(jsonEncode(formatApi.toJson((value) {
      return value //
          .map((e) => e.toJson()) //
          .toList();
    })));

Future<void> updateFormat(Database db, DateTime now) async {
  final newFormatApi = await readFormatApi();
  final oldFormatApiData = [
    for (final rotation in await db.select(db.format).get())
      FormatApiData(
        code: rotation.code,
        name: rotation.name,
      ),
  ];

  await writeFormatApi(newFormatApi.copyWith(
    lastUpdated: const DeepCollectionEquality().equals(oldFormatApiData, newFormatApi.data) //
        ? newFormatApi.lastUpdated
        : now,
    versionNumber: '2.0',
    success: true,
    total: newFormatApi.data.length,
  ));

  await db.batch((b) {
    b.deleteAll(db.format);
    b.insertAll(
      db.format,
      newFormatApi.data.mapIndexed(
        (index, format) => FormatData(
          id: index,
          code: format.code,
          name: format.name,
        ),
      ),
    );
  });
}
