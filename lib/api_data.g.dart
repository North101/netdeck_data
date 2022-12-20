// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResult<T> _$$_ApiResultFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ApiResult<T>(
      data: fromJsonT(json['data']),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      versionNumber: json['version_number'] as String?,
      success: json['success'] as bool?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ApiResultToJson<T>(
  _$_ApiResult<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'data': toJsonT(instance.data),
    'last_updated': instance.lastUpdated.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version_number', instance.versionNumber);
  writeNotNull('success', instance.success);
  writeNotNull('total', instance.total);
  return val;
}

_$_CardApiData _$$_CardApiDataFromJson(Map json) => _$_CardApiData(
      code: json['code'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CardApiDataToJson(_$_CardApiData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
    };

_$_FormatApiData _$$_FormatApiDataFromJson(Map json) => _$_FormatApiData(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_FormatApiDataToJson(_$_FormatApiData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$_RotationApiData _$$_RotationApiDataFromJson(Map json) => _$_RotationApiData(
      code: json['code'] as String,
      formatCode: json['format_code'] as String,
      name: json['name'] as String,
      dateStart: json['date_start'] == null
          ? null
          : DateTime.parse(json['date_start'] as String),
      current: json['current'] as bool?,
      latest: json['latest'] as bool?,
      rotated:
          (json['rotated'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_RotationApiDataToJson(_$_RotationApiData instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'format_code': instance.formatCode,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_start', dateToJson(instance.dateStart));
  writeNotNull('current', instance.current);
  writeNotNull('latest', instance.latest);
  val['rotated'] = instance.rotated;
  return val;
}

_$_MwlApiData _$$_MwlApiDataFromJson(Map json) => _$_MwlApiData(
      code: json['code'] as String,
      name: json['name'] as String,
      formatCode: json['format_code'] as String,
      dateStart: json['date_start'] == null
          ? null
          : DateTime.parse(json['date_start'] as String),
      runnerPoints: json['runner_points'] as int?,
      corpPoints: json['corp_points'] as int?,
      active: json['active'] as bool?,
      latest: json['latest'] as bool?,
      cards: (json['cards'] as Map).map(
        (k, e) => MapEntry(k as String,
            MwlCardApiData.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      cardTitles: (json['card_titles'] as Map).map(
        (k, e) => MapEntry(k as String,
            MwlCardApiData.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$_MwlApiDataToJson(_$_MwlApiData instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'name': instance.name,
    'format_code': instance.formatCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_start', dateToJson(instance.dateStart));
  writeNotNull('runner_points', instance.runnerPoints);
  writeNotNull('corp_points', instance.corpPoints);
  writeNotNull('active', instance.active);
  writeNotNull('latest', instance.latest);
  val['cards'] = instance.cards.map((k, e) => MapEntry(k, e.toJson()));
  val['card_titles'] =
      instance.cardTitles.map((k, e) => MapEntry(k, e.toJson()));
  return val;
}

_$_MwlCardApiData _$$_MwlCardApiDataFromJson(Map json) => _$_MwlCardApiData(
      globalPenalty: json['global_penalty'] as int?,
      universalFactionCost: json['universal_faction_cost'] as int?,
      isRestricted: json['is_restricted'] as int?,
      points: json['points'] as int?,
      deckLimit: json['deck_limit'] as int?,
    );

Map<String, dynamic> _$$_MwlCardApiDataToJson(_$_MwlCardApiData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('global_penalty', instance.globalPenalty);
  writeNotNull('universal_faction_cost', instance.universalFactionCost);
  writeNotNull('is_restricted', instance.isRestricted);
  writeNotNull('points', instance.points);
  writeNotNull('deck_limit', instance.deckLimit);
  return val;
}
