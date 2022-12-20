// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_data.freezed.dart';
part 'api_data.g.dart';

String? dateToJson(DateTime? value) => value?.toIso8601String().split('T')[0];

@Freezed(genericArgumentFactories: true)
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult({
    required T data,
    required DateTime lastUpdated,
    required String? versionNumber,
    required bool? success,
    required int? total,
  }) = _ApiResult;

  factory ApiResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResultFromJson(json, fromJsonT);
}

@freezed
class CardApiData with _$CardApiData {
  const factory CardApiData({
    required String code,
    required String title,
  }) = _CardApiData;

  factory CardApiData.fromJson(Map<String, dynamic> json) => _$CardApiDataFromJson(json);
}

@freezed
class FormatApiData with _$FormatApiData {
  const factory FormatApiData({
    required String code,
    required String name,
  }) = _FormatApiData;

  factory FormatApiData.fromJson(Map<String, dynamic> json) => _$FormatApiDataFromJson(json);
}

@freezed
class RotationApiData with _$RotationApiData {
  const factory RotationApiData({
    required String code,
    required String formatCode,
    required String name,
    @JsonKey(toJson: dateToJson) required DateTime? dateStart,
    required bool? current,
    required bool? latest,
    required List<String> rotated,
  }) = _RotationApiData;

  factory RotationApiData.fromJson(Map<String, dynamic> json) => _$RotationApiDataFromJson(json);
}

@freezed
class MwlApiData with _$MwlApiData {
  const factory MwlApiData({
    required String code,
    required String name,
    required String formatCode,
    @JsonKey(toJson: dateToJson) required DateTime? dateStart,
    required int? runnerPoints,
    required int? corpPoints,
    required bool? active,
    required bool? latest,
    required Map<String, MwlCardApiData> cards,
    required Map<String, MwlCardApiData> cardTitles,
  }) = _MwlApiData;

  factory MwlApiData.fromJson(Map<String, dynamic> json) => _$MwlApiDataFromJson(json);
}

@freezed
class MwlCardApiData with _$MwlCardApiData {
  const factory MwlCardApiData({
    required int? globalPenalty,
    required int? universalFactionCost,
    required int? isRestricted,
    required int? points,
    required int? deckLimit,
  }) = _MwlCardApiData;

  factory MwlCardApiData.fromJson(Map<String, dynamic> json) => _$MwlCardApiDataFromJson(json);
}
