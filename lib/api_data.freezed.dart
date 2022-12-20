// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResult<T> _$ApiResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResult<T> {
  T get data => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  String? get versionNumber => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResultCopyWith<T, ApiResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
  @useResult
  $Res call(
      {T data,
      DateTime lastUpdated,
      String? versionNumber,
      bool? success,
      int? total});
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? lastUpdated = null,
    Object? versionNumber = freezed,
    Object? success = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      versionNumber: freezed == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResultCopyWith<T, $Res>
    implements $ApiResultCopyWith<T, $Res> {
  factory _$$_ApiResultCopyWith(
          _$_ApiResult<T> value, $Res Function(_$_ApiResult<T>) then) =
      __$$_ApiResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {T data,
      DateTime lastUpdated,
      String? versionNumber,
      bool? success,
      int? total});
}

/// @nodoc
class __$$_ApiResultCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$_ApiResult<T>>
    implements _$$_ApiResultCopyWith<T, $Res> {
  __$$_ApiResultCopyWithImpl(
      _$_ApiResult<T> _value, $Res Function(_$_ApiResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? lastUpdated = null,
    Object? versionNumber = freezed,
    Object? success = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ApiResult<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      versionNumber: freezed == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ApiResult<T> implements _ApiResult<T> {
  const _$_ApiResult(
      {required this.data,
      required this.lastUpdated,
      required this.versionNumber,
      required this.success,
      required this.total});

  factory _$_ApiResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ApiResultFromJson(json, fromJsonT);

  @override
  final T data;
  @override
  final DateTime lastUpdated;
  @override
  final String? versionNumber;
  @override
  final bool? success;
  @override
  final int? total;

  @override
  String toString() {
    return 'ApiResult<$T>(data: $data, lastUpdated: $lastUpdated, versionNumber: $versionNumber, success: $success, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResult<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.versionNumber, versionNumber) ||
                other.versionNumber == versionNumber) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      lastUpdated,
      versionNumber,
      success,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResultCopyWith<T, _$_ApiResult<T>> get copyWith =>
      __$$_ApiResultCopyWithImpl<T, _$_ApiResult<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ApiResultToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResult<T> implements ApiResult<T> {
  const factory _ApiResult(
      {required final T data,
      required final DateTime lastUpdated,
      required final String? versionNumber,
      required final bool? success,
      required final int? total}) = _$_ApiResult<T>;

  factory _ApiResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ApiResult<T>.fromJson;

  @override
  T get data;
  @override
  DateTime get lastUpdated;
  @override
  String? get versionNumber;
  @override
  bool? get success;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResultCopyWith<T, _$_ApiResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

CardApiData _$CardApiDataFromJson(Map<String, dynamic> json) {
  return _CardApiData.fromJson(json);
}

/// @nodoc
mixin _$CardApiData {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardApiDataCopyWith<CardApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardApiDataCopyWith<$Res> {
  factory $CardApiDataCopyWith(
          CardApiData value, $Res Function(CardApiData) then) =
      _$CardApiDataCopyWithImpl<$Res, CardApiData>;
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class _$CardApiDataCopyWithImpl<$Res, $Val extends CardApiData>
    implements $CardApiDataCopyWith<$Res> {
  _$CardApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardApiDataCopyWith<$Res>
    implements $CardApiDataCopyWith<$Res> {
  factory _$$_CardApiDataCopyWith(
          _$_CardApiData value, $Res Function(_$_CardApiData) then) =
      __$$_CardApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class __$$_CardApiDataCopyWithImpl<$Res>
    extends _$CardApiDataCopyWithImpl<$Res, _$_CardApiData>
    implements _$$_CardApiDataCopyWith<$Res> {
  __$$_CardApiDataCopyWithImpl(
      _$_CardApiData _value, $Res Function(_$_CardApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
  }) {
    return _then(_$_CardApiData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardApiData implements _CardApiData {
  const _$_CardApiData({required this.code, required this.title});

  factory _$_CardApiData.fromJson(Map<String, dynamic> json) =>
      _$$_CardApiDataFromJson(json);

  @override
  final String code;
  @override
  final String title;

  @override
  String toString() {
    return 'CardApiData(code: $code, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardApiData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardApiDataCopyWith<_$_CardApiData> get copyWith =>
      __$$_CardApiDataCopyWithImpl<_$_CardApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardApiDataToJson(
      this,
    );
  }
}

abstract class _CardApiData implements CardApiData {
  const factory _CardApiData(
      {required final String code,
      required final String title}) = _$_CardApiData;

  factory _CardApiData.fromJson(Map<String, dynamic> json) =
      _$_CardApiData.fromJson;

  @override
  String get code;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CardApiDataCopyWith<_$_CardApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

FormatApiData _$FormatApiDataFromJson(Map<String, dynamic> json) {
  return _FormatApiData.fromJson(json);
}

/// @nodoc
mixin _$FormatApiData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormatApiDataCopyWith<FormatApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatApiDataCopyWith<$Res> {
  factory $FormatApiDataCopyWith(
          FormatApiData value, $Res Function(FormatApiData) then) =
      _$FormatApiDataCopyWithImpl<$Res, FormatApiData>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$FormatApiDataCopyWithImpl<$Res, $Val extends FormatApiData>
    implements $FormatApiDataCopyWith<$Res> {
  _$FormatApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormatApiDataCopyWith<$Res>
    implements $FormatApiDataCopyWith<$Res> {
  factory _$$_FormatApiDataCopyWith(
          _$_FormatApiData value, $Res Function(_$_FormatApiData) then) =
      __$$_FormatApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$_FormatApiDataCopyWithImpl<$Res>
    extends _$FormatApiDataCopyWithImpl<$Res, _$_FormatApiData>
    implements _$$_FormatApiDataCopyWith<$Res> {
  __$$_FormatApiDataCopyWithImpl(
      _$_FormatApiData _value, $Res Function(_$_FormatApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$_FormatApiData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormatApiData implements _FormatApiData {
  const _$_FormatApiData({required this.code, required this.name});

  factory _$_FormatApiData.fromJson(Map<String, dynamic> json) =>
      _$$_FormatApiDataFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'FormatApiData(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormatApiData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormatApiDataCopyWith<_$_FormatApiData> get copyWith =>
      __$$_FormatApiDataCopyWithImpl<_$_FormatApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormatApiDataToJson(
      this,
    );
  }
}

abstract class _FormatApiData implements FormatApiData {
  const factory _FormatApiData(
      {required final String code,
      required final String name}) = _$_FormatApiData;

  factory _FormatApiData.fromJson(Map<String, dynamic> json) =
      _$_FormatApiData.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FormatApiDataCopyWith<_$_FormatApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

RotationApiData _$RotationApiDataFromJson(Map<String, dynamic> json) {
  return _RotationApiData.fromJson(json);
}

/// @nodoc
mixin _$RotationApiData {
  String get code => throw _privateConstructorUsedError;
  String get formatCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateToJson)
  DateTime? get dateStart => throw _privateConstructorUsedError;
  bool? get current => throw _privateConstructorUsedError;
  bool? get latest => throw _privateConstructorUsedError;
  List<String> get rotated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RotationApiDataCopyWith<RotationApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RotationApiDataCopyWith<$Res> {
  factory $RotationApiDataCopyWith(
          RotationApiData value, $Res Function(RotationApiData) then) =
      _$RotationApiDataCopyWithImpl<$Res, RotationApiData>;
  @useResult
  $Res call(
      {String code,
      String formatCode,
      String name,
      @JsonKey(toJson: dateToJson) DateTime? dateStart,
      bool? current,
      bool? latest,
      List<String> rotated});
}

/// @nodoc
class _$RotationApiDataCopyWithImpl<$Res, $Val extends RotationApiData>
    implements $RotationApiDataCopyWith<$Res> {
  _$RotationApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? formatCode = null,
    Object? name = null,
    Object? dateStart = freezed,
    Object? current = freezed,
    Object? latest = freezed,
    Object? rotated = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      formatCode: null == formatCode
          ? _value.formatCode
          : formatCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as bool?,
      rotated: null == rotated
          ? _value.rotated
          : rotated // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RotationApiDataCopyWith<$Res>
    implements $RotationApiDataCopyWith<$Res> {
  factory _$$_RotationApiDataCopyWith(
          _$_RotationApiData value, $Res Function(_$_RotationApiData) then) =
      __$$_RotationApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String formatCode,
      String name,
      @JsonKey(toJson: dateToJson) DateTime? dateStart,
      bool? current,
      bool? latest,
      List<String> rotated});
}

/// @nodoc
class __$$_RotationApiDataCopyWithImpl<$Res>
    extends _$RotationApiDataCopyWithImpl<$Res, _$_RotationApiData>
    implements _$$_RotationApiDataCopyWith<$Res> {
  __$$_RotationApiDataCopyWithImpl(
      _$_RotationApiData _value, $Res Function(_$_RotationApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? formatCode = null,
    Object? name = null,
    Object? dateStart = freezed,
    Object? current = freezed,
    Object? latest = freezed,
    Object? rotated = null,
  }) {
    return _then(_$_RotationApiData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      formatCode: null == formatCode
          ? _value.formatCode
          : formatCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as bool?,
      rotated: null == rotated
          ? _value._rotated
          : rotated // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RotationApiData implements _RotationApiData {
  const _$_RotationApiData(
      {required this.code,
      required this.formatCode,
      required this.name,
      @JsonKey(toJson: dateToJson) required this.dateStart,
      required this.current,
      required this.latest,
      required final List<String> rotated})
      : _rotated = rotated;

  factory _$_RotationApiData.fromJson(Map<String, dynamic> json) =>
      _$$_RotationApiDataFromJson(json);

  @override
  final String code;
  @override
  final String formatCode;
  @override
  final String name;
  @override
  @JsonKey(toJson: dateToJson)
  final DateTime? dateStart;
  @override
  final bool? current;
  @override
  final bool? latest;
  final List<String> _rotated;
  @override
  List<String> get rotated {
    if (_rotated is EqualUnmodifiableListView) return _rotated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rotated);
  }

  @override
  String toString() {
    return 'RotationApiData(code: $code, formatCode: $formatCode, name: $name, dateStart: $dateStart, current: $current, latest: $latest, rotated: $rotated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RotationApiData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.formatCode, formatCode) ||
                other.formatCode == formatCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            const DeepCollectionEquality().equals(other._rotated, _rotated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      formatCode,
      name,
      dateStart,
      current,
      latest,
      const DeepCollectionEquality().hash(_rotated));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RotationApiDataCopyWith<_$_RotationApiData> get copyWith =>
      __$$_RotationApiDataCopyWithImpl<_$_RotationApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RotationApiDataToJson(
      this,
    );
  }
}

abstract class _RotationApiData implements RotationApiData {
  const factory _RotationApiData(
      {required final String code,
      required final String formatCode,
      required final String name,
      @JsonKey(toJson: dateToJson) required final DateTime? dateStart,
      required final bool? current,
      required final bool? latest,
      required final List<String> rotated}) = _$_RotationApiData;

  factory _RotationApiData.fromJson(Map<String, dynamic> json) =
      _$_RotationApiData.fromJson;

  @override
  String get code;
  @override
  String get formatCode;
  @override
  String get name;
  @override
  @JsonKey(toJson: dateToJson)
  DateTime? get dateStart;
  @override
  bool? get current;
  @override
  bool? get latest;
  @override
  List<String> get rotated;
  @override
  @JsonKey(ignore: true)
  _$$_RotationApiDataCopyWith<_$_RotationApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

MwlApiData _$MwlApiDataFromJson(Map<String, dynamic> json) {
  return _MwlApiData.fromJson(json);
}

/// @nodoc
mixin _$MwlApiData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get formatCode => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateToJson)
  DateTime? get dateStart => throw _privateConstructorUsedError;
  int? get runnerPoints => throw _privateConstructorUsedError;
  int? get corpPoints => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get latest => throw _privateConstructorUsedError;
  Map<String, MwlCardApiData> get cards => throw _privateConstructorUsedError;
  Map<String, MwlCardApiData> get cardTitles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MwlApiDataCopyWith<MwlApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MwlApiDataCopyWith<$Res> {
  factory $MwlApiDataCopyWith(
          MwlApiData value, $Res Function(MwlApiData) then) =
      _$MwlApiDataCopyWithImpl<$Res, MwlApiData>;
  @useResult
  $Res call(
      {String code,
      String name,
      String formatCode,
      @JsonKey(toJson: dateToJson) DateTime? dateStart,
      int? runnerPoints,
      int? corpPoints,
      bool? active,
      bool? latest,
      Map<String, MwlCardApiData> cards,
      Map<String, MwlCardApiData> cardTitles});
}

/// @nodoc
class _$MwlApiDataCopyWithImpl<$Res, $Val extends MwlApiData>
    implements $MwlApiDataCopyWith<$Res> {
  _$MwlApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? formatCode = null,
    Object? dateStart = freezed,
    Object? runnerPoints = freezed,
    Object? corpPoints = freezed,
    Object? active = freezed,
    Object? latest = freezed,
    Object? cards = null,
    Object? cardTitles = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      formatCode: null == formatCode
          ? _value.formatCode
          : formatCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      runnerPoints: freezed == runnerPoints
          ? _value.runnerPoints
          : runnerPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      corpPoints: freezed == corpPoints
          ? _value.corpPoints
          : corpPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Map<String, MwlCardApiData>,
      cardTitles: null == cardTitles
          ? _value.cardTitles
          : cardTitles // ignore: cast_nullable_to_non_nullable
              as Map<String, MwlCardApiData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MwlApiDataCopyWith<$Res>
    implements $MwlApiDataCopyWith<$Res> {
  factory _$$_MwlApiDataCopyWith(
          _$_MwlApiData value, $Res Function(_$_MwlApiData) then) =
      __$$_MwlApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String name,
      String formatCode,
      @JsonKey(toJson: dateToJson) DateTime? dateStart,
      int? runnerPoints,
      int? corpPoints,
      bool? active,
      bool? latest,
      Map<String, MwlCardApiData> cards,
      Map<String, MwlCardApiData> cardTitles});
}

/// @nodoc
class __$$_MwlApiDataCopyWithImpl<$Res>
    extends _$MwlApiDataCopyWithImpl<$Res, _$_MwlApiData>
    implements _$$_MwlApiDataCopyWith<$Res> {
  __$$_MwlApiDataCopyWithImpl(
      _$_MwlApiData _value, $Res Function(_$_MwlApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? formatCode = null,
    Object? dateStart = freezed,
    Object? runnerPoints = freezed,
    Object? corpPoints = freezed,
    Object? active = freezed,
    Object? latest = freezed,
    Object? cards = null,
    Object? cardTitles = null,
  }) {
    return _then(_$_MwlApiData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      formatCode: null == formatCode
          ? _value.formatCode
          : formatCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      runnerPoints: freezed == runnerPoints
          ? _value.runnerPoints
          : runnerPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      corpPoints: freezed == corpPoints
          ? _value.corpPoints
          : corpPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Map<String, MwlCardApiData>,
      cardTitles: null == cardTitles
          ? _value._cardTitles
          : cardTitles // ignore: cast_nullable_to_non_nullable
              as Map<String, MwlCardApiData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MwlApiData implements _MwlApiData {
  const _$_MwlApiData(
      {required this.code,
      required this.name,
      required this.formatCode,
      @JsonKey(toJson: dateToJson) required this.dateStart,
      required this.runnerPoints,
      required this.corpPoints,
      required this.active,
      required this.latest,
      required final Map<String, MwlCardApiData> cards,
      required final Map<String, MwlCardApiData> cardTitles})
      : _cards = cards,
        _cardTitles = cardTitles;

  factory _$_MwlApiData.fromJson(Map<String, dynamic> json) =>
      _$$_MwlApiDataFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String formatCode;
  @override
  @JsonKey(toJson: dateToJson)
  final DateTime? dateStart;
  @override
  final int? runnerPoints;
  @override
  final int? corpPoints;
  @override
  final bool? active;
  @override
  final bool? latest;
  final Map<String, MwlCardApiData> _cards;
  @override
  Map<String, MwlCardApiData> get cards {
    if (_cards is EqualUnmodifiableMapView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cards);
  }

  final Map<String, MwlCardApiData> _cardTitles;
  @override
  Map<String, MwlCardApiData> get cardTitles {
    if (_cardTitles is EqualUnmodifiableMapView) return _cardTitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cardTitles);
  }

  @override
  String toString() {
    return 'MwlApiData(code: $code, name: $name, formatCode: $formatCode, dateStart: $dateStart, runnerPoints: $runnerPoints, corpPoints: $corpPoints, active: $active, latest: $latest, cards: $cards, cardTitles: $cardTitles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MwlApiData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.formatCode, formatCode) ||
                other.formatCode == formatCode) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.runnerPoints, runnerPoints) ||
                other.runnerPoints == runnerPoints) &&
            (identical(other.corpPoints, corpPoints) ||
                other.corpPoints == corpPoints) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            const DeepCollectionEquality()
                .equals(other._cardTitles, _cardTitles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      formatCode,
      dateStart,
      runnerPoints,
      corpPoints,
      active,
      latest,
      const DeepCollectionEquality().hash(_cards),
      const DeepCollectionEquality().hash(_cardTitles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MwlApiDataCopyWith<_$_MwlApiData> get copyWith =>
      __$$_MwlApiDataCopyWithImpl<_$_MwlApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MwlApiDataToJson(
      this,
    );
  }
}

abstract class _MwlApiData implements MwlApiData {
  const factory _MwlApiData(
      {required final String code,
      required final String name,
      required final String formatCode,
      @JsonKey(toJson: dateToJson) required final DateTime? dateStart,
      required final int? runnerPoints,
      required final int? corpPoints,
      required final bool? active,
      required final bool? latest,
      required final Map<String, MwlCardApiData> cards,
      required final Map<String, MwlCardApiData> cardTitles}) = _$_MwlApiData;

  factory _MwlApiData.fromJson(Map<String, dynamic> json) =
      _$_MwlApiData.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String get formatCode;
  @override
  @JsonKey(toJson: dateToJson)
  DateTime? get dateStart;
  @override
  int? get runnerPoints;
  @override
  int? get corpPoints;
  @override
  bool? get active;
  @override
  bool? get latest;
  @override
  Map<String, MwlCardApiData> get cards;
  @override
  Map<String, MwlCardApiData> get cardTitles;
  @override
  @JsonKey(ignore: true)
  _$$_MwlApiDataCopyWith<_$_MwlApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

MwlCardApiData _$MwlCardApiDataFromJson(Map<String, dynamic> json) {
  return _MwlCardApiData.fromJson(json);
}

/// @nodoc
mixin _$MwlCardApiData {
  int? get globalPenalty => throw _privateConstructorUsedError;
  int? get universalFactionCost => throw _privateConstructorUsedError;
  int? get isRestricted => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  int? get deckLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MwlCardApiDataCopyWith<MwlCardApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MwlCardApiDataCopyWith<$Res> {
  factory $MwlCardApiDataCopyWith(
          MwlCardApiData value, $Res Function(MwlCardApiData) then) =
      _$MwlCardApiDataCopyWithImpl<$Res, MwlCardApiData>;
  @useResult
  $Res call(
      {int? globalPenalty,
      int? universalFactionCost,
      int? isRestricted,
      int? points,
      int? deckLimit});
}

/// @nodoc
class _$MwlCardApiDataCopyWithImpl<$Res, $Val extends MwlCardApiData>
    implements $MwlCardApiDataCopyWith<$Res> {
  _$MwlCardApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalPenalty = freezed,
    Object? universalFactionCost = freezed,
    Object? isRestricted = freezed,
    Object? points = freezed,
    Object? deckLimit = freezed,
  }) {
    return _then(_value.copyWith(
      globalPenalty: freezed == globalPenalty
          ? _value.globalPenalty
          : globalPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      universalFactionCost: freezed == universalFactionCost
          ? _value.universalFactionCost
          : universalFactionCost // ignore: cast_nullable_to_non_nullable
              as int?,
      isRestricted: freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      deckLimit: freezed == deckLimit
          ? _value.deckLimit
          : deckLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MwlCardApiDataCopyWith<$Res>
    implements $MwlCardApiDataCopyWith<$Res> {
  factory _$$_MwlCardApiDataCopyWith(
          _$_MwlCardApiData value, $Res Function(_$_MwlCardApiData) then) =
      __$$_MwlCardApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? globalPenalty,
      int? universalFactionCost,
      int? isRestricted,
      int? points,
      int? deckLimit});
}

/// @nodoc
class __$$_MwlCardApiDataCopyWithImpl<$Res>
    extends _$MwlCardApiDataCopyWithImpl<$Res, _$_MwlCardApiData>
    implements _$$_MwlCardApiDataCopyWith<$Res> {
  __$$_MwlCardApiDataCopyWithImpl(
      _$_MwlCardApiData _value, $Res Function(_$_MwlCardApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalPenalty = freezed,
    Object? universalFactionCost = freezed,
    Object? isRestricted = freezed,
    Object? points = freezed,
    Object? deckLimit = freezed,
  }) {
    return _then(_$_MwlCardApiData(
      globalPenalty: freezed == globalPenalty
          ? _value.globalPenalty
          : globalPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      universalFactionCost: freezed == universalFactionCost
          ? _value.universalFactionCost
          : universalFactionCost // ignore: cast_nullable_to_non_nullable
              as int?,
      isRestricted: freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      deckLimit: freezed == deckLimit
          ? _value.deckLimit
          : deckLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MwlCardApiData implements _MwlCardApiData {
  const _$_MwlCardApiData(
      {required this.globalPenalty,
      required this.universalFactionCost,
      required this.isRestricted,
      required this.points,
      required this.deckLimit});

  factory _$_MwlCardApiData.fromJson(Map<String, dynamic> json) =>
      _$$_MwlCardApiDataFromJson(json);

  @override
  final int? globalPenalty;
  @override
  final int? universalFactionCost;
  @override
  final int? isRestricted;
  @override
  final int? points;
  @override
  final int? deckLimit;

  @override
  String toString() {
    return 'MwlCardApiData(globalPenalty: $globalPenalty, universalFactionCost: $universalFactionCost, isRestricted: $isRestricted, points: $points, deckLimit: $deckLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MwlCardApiData &&
            (identical(other.globalPenalty, globalPenalty) ||
                other.globalPenalty == globalPenalty) &&
            (identical(other.universalFactionCost, universalFactionCost) ||
                other.universalFactionCost == universalFactionCost) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.deckLimit, deckLimit) ||
                other.deckLimit == deckLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, globalPenalty,
      universalFactionCost, isRestricted, points, deckLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MwlCardApiDataCopyWith<_$_MwlCardApiData> get copyWith =>
      __$$_MwlCardApiDataCopyWithImpl<_$_MwlCardApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MwlCardApiDataToJson(
      this,
    );
  }
}

abstract class _MwlCardApiData implements MwlCardApiData {
  const factory _MwlCardApiData(
      {required final int? globalPenalty,
      required final int? universalFactionCost,
      required final int? isRestricted,
      required final int? points,
      required final int? deckLimit}) = _$_MwlCardApiData;

  factory _MwlCardApiData.fromJson(Map<String, dynamic> json) =
      _$_MwlCardApiData.fromJson;

  @override
  int? get globalPenalty;
  @override
  int? get universalFactionCost;
  @override
  int? get isRestricted;
  @override
  int? get points;
  @override
  int? get deckLimit;
  @override
  @JsonKey(ignore: true)
  _$$_MwlCardApiDataCopyWith<_$_MwlCardApiData> get copyWith =>
      throw _privateConstructorUsedError;
}
