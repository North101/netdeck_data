import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import '/api_data.dart';
import '/database.dart';
import '/netdeck_data.dart';

final mwlFile = File('data/mwl.json');

Future<ApiResult<List<CardApiData>>> readCardApi() async {
  final r = await http.get(Uri.parse('https://netrunnerdb.com/api/2.0/public/cards'));
  return ApiResult.fromJson(jsonDecode(r.body), (json) {
    return (json as List) //
        .map((e) => CardApiData.fromJson((e as Map).cast())) //
        .toList();
  });
}

Future<ApiResult<List<MwlApiData>>> readMwlApi() async =>
    ApiResult.fromJson(jsonDecode(await mwlFile.readAsString()), (json) {
      return (json as List) //
          .map((e) => MwlApiData.fromJson((e as Map).cast())) //
          .toList();
    });

Future<void> writeMwlApi(ApiResult<List<MwlApiData>> mwlApi) => //
    mwlFile.writeAsString(jsonEncode(mwlApi.toJson((value) {
      return value //
          .map((e) => e.toJson()) //
          .toList();
    })));

Future<void> updateMwl(Database db, DateTime now) async {
  final mwlList = await db.select(db.mwl).get();
  final mwlCardList = await db.select(db.mwlCard).get();
  final cardTitleMap = (await readCardApi()).data.groupListsBy((e) => e.title);

  final newMwlApi = await readMwlApi();
  final newMwlApiData = [
    for (final mwl in newMwlApi.data)
      mwl.copyWith(
        active: newMwlApi.data.forFormat(mwl.formatCode).isActive(now, mwl.dateStart),
        latest: newMwlApi.data.forFormat(mwl.formatCode).isLatest(mwl.dateStart),
        cards: mwl.cardTitles.byCardCode(cardTitleMap),
      ),
  ];
  final oldMwlApiData = [
    for (final mwl in mwlList)
      MwlApiData(
        code: mwl.code,
        name: mwl.name,
        formatCode: mwl.formatCode,
        dateStart: mwl.dateStart,
        active: mwlList.forFormat(mwl.formatCode).isActive(now, mwl.dateStart),
        latest: mwlList.forFormat(mwl.formatCode).isLatest(mwl.dateStart),
        cards: mwlCardList.forMwlCode(mwl.code).byCardCode(cardTitleMap),
        cardTitles: mwlCardList.forMwlCode(mwl.code),
        runnerPoints: mwl.runnerPoints,
        corpPoints: mwl.corpPoints,
      ),
  ];
  await writeMwlApi(newMwlApi.copyWith(
    data: newMwlApiData,
    lastUpdated: const DeepCollectionEquality().equals(oldMwlApiData, newMwlApiData) //
        ? newMwlApi.lastUpdated
        : now,
    versionNumber: '2.0',
    success: true,
    total: newMwlApiData.length,
  ));

  await db.batch((b) {
    b.deleteAll(db.mwl);
    b.insertAll(db.mwl, [
      for (final mwl in newMwlApi.data)
        MwlData(
          code: mwl.code,
          formatCode: mwl.formatCode,
          name: mwl.name,
          dateStart: mwl.dateStart,
          runnerPoints: mwl.runnerPoints,
          corpPoints: mwl.corpPoints,
        ),
    ]);

    b.deleteAll(db.mwlCard);
    b.insertAll(db.mwlCard, [
      for (final mwl in newMwlApi.data)
        for (final mwlCard in mwl.cardTitles.entries)
          MwlCardData(
            mwlCode: mwl.code,
            cardTitle: mwlCard.key,
            isRestricted: mwlCard.value.isRestricted == 1,
            globalPenalty: mwlCard.value.globalPenalty,
            universalFactionCost: mwlCard.value.universalFactionCost,
            deckLimit: mwlCard.value.deckLimit,
            points: mwlCard.value.points,
          ),
    ]);
  });
}

extension on Iterable<DateTime> {
  bool isLatest(DateTime? value) => isEmpty ? false : reduce((a, b) => a.isAfter(b) ? a : b) == value;

  bool isActive(DateTime now, DateTime? value) => where((e) => !e.isAfter(now)).isLatest(value);
}

extension on List<MwlData> {
  Iterable<DateTime> forFormat(String formatCode) => where((e) => e.formatCode == formatCode) //
      .map((e) => e.dateStart) //
      .whereNotNull();
}

extension on List<MwlApiData> {
  Iterable<DateTime> forFormat(String formatCode) => where((e) => e.formatCode == formatCode) //
      .map((e) => e.dateStart) //
      .whereNotNull();
}

extension on Map<String, MwlCardApiData> {
  Map<String, MwlCardApiData> byCardCode(Map<String, List<CardApiData>> cardTitleMap) => Map.fromEntries(entries
      .map((e) =>
          cardTitleMap[e.key]?.map((card) => MapEntry(
                card.code,
                MwlCardApiData(
                  globalPenalty: e.value.globalPenalty,
                  universalFactionCost: e.value.universalFactionCost,
                  isRestricted: e.value.isRestricted,
                  points: e.value.points,
                  deckLimit: e.value.deckLimit,
                ),
              )) ??
          const [])
      .flattened);
}

extension on List<MwlCardData> {
  Map<String, MwlCardApiData> forMwlCode(String code) => Map.fromEntries(
        where((e) => e.mwlCode == code).map((e) => MapEntry(
              e.cardTitle,
              MwlCardApiData(
                globalPenalty: e.globalPenalty,
                universalFactionCost: e.universalFactionCost,
                isRestricted: e.isRestricted ? 1 : null,
                points: e.points,
                deckLimit: e.deckLimit,
              ),
            )),
      );
}
