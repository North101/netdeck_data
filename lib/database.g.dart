// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class RotationData extends DataClass implements Insertable<RotationData> {
  final String code;
  final String formatCode;
  final String name;
  final DateTime? dateStart;
  const RotationData(
      {required this.code,
      required this.formatCode,
      required this.name,
      this.dateStart});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['format_code'] = Variable<String>(formatCode);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || dateStart != null) {
      map['date_start'] = Variable<DateTime>(dateStart);
    }
    return map;
  }

  RotationCompanion toCompanion(bool nullToAbsent) {
    return RotationCompanion(
      code: Value(code),
      formatCode: Value(formatCode),
      name: Value(name),
      dateStart: dateStart == null && nullToAbsent
          ? const Value.absent()
          : Value(dateStart),
    );
  }

  factory RotationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RotationData(
      code: serializer.fromJson<String>(json['code']),
      formatCode: serializer.fromJson<String>(json['format_code']),
      name: serializer.fromJson<String>(json['name']),
      dateStart: serializer.fromJson<DateTime?>(json['date_start']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'format_code': serializer.toJson<String>(formatCode),
      'name': serializer.toJson<String>(name),
      'date_start': serializer.toJson<DateTime?>(dateStart),
    };
  }

  RotationData copyWith(
          {String? code,
          String? formatCode,
          String? name,
          Value<DateTime?> dateStart = const Value.absent()}) =>
      RotationData(
        code: code ?? this.code,
        formatCode: formatCode ?? this.formatCode,
        name: name ?? this.name,
        dateStart: dateStart.present ? dateStart.value : this.dateStart,
      );
  @override
  String toString() {
    return (StringBuffer('RotationData(')
          ..write('code: $code, ')
          ..write('formatCode: $formatCode, ')
          ..write('name: $name, ')
          ..write('dateStart: $dateStart')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, formatCode, name, dateStart);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RotationData &&
          other.code == this.code &&
          other.formatCode == this.formatCode &&
          other.name == this.name &&
          other.dateStart == this.dateStart);
}

class RotationCompanion extends UpdateCompanion<RotationData> {
  final Value<String> code;
  final Value<String> formatCode;
  final Value<String> name;
  final Value<DateTime?> dateStart;
  const RotationCompanion({
    this.code = const Value.absent(),
    this.formatCode = const Value.absent(),
    this.name = const Value.absent(),
    this.dateStart = const Value.absent(),
  });
  RotationCompanion.insert({
    required String code,
    required String formatCode,
    required String name,
    this.dateStart = const Value.absent(),
  })  : code = Value(code),
        formatCode = Value(formatCode),
        name = Value(name);
  static Insertable<RotationData> custom({
    Expression<String>? code,
    Expression<String>? formatCode,
    Expression<String>? name,
    Expression<DateTime>? dateStart,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (formatCode != null) 'format_code': formatCode,
      if (name != null) 'name': name,
      if (dateStart != null) 'date_start': dateStart,
    });
  }

  RotationCompanion copyWith(
      {Value<String>? code,
      Value<String>? formatCode,
      Value<String>? name,
      Value<DateTime?>? dateStart}) {
    return RotationCompanion(
      code: code ?? this.code,
      formatCode: formatCode ?? this.formatCode,
      name: name ?? this.name,
      dateStart: dateStart ?? this.dateStart,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (formatCode.present) {
      map['format_code'] = Variable<String>(formatCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dateStart.present) {
      map['date_start'] = Variable<DateTime>(dateStart.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RotationCompanion(')
          ..write('code: $code, ')
          ..write('formatCode: $formatCode, ')
          ..write('name: $name, ')
          ..write('dateStart: $dateStart')
          ..write(')'))
        .toString();
  }
}

class Rotation extends Table with TableInfo<Rotation, RotationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Rotation(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _formatCodeMeta =
      const VerificationMeta('formatCode');
  late final GeneratedColumn<String> formatCode = GeneratedColumn<String>(
      'format_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _dateStartMeta =
      const VerificationMeta('dateStart');
  late final GeneratedColumn<DateTime> dateStart = GeneratedColumn<DateTime>(
      'date_start', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [code, formatCode, name, dateStart];
  @override
  String get aliasedName => _alias ?? 'rotation';
  @override
  String get actualTableName => 'rotation';
  @override
  VerificationContext validateIntegrity(Insertable<RotationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('format_code')) {
      context.handle(
          _formatCodeMeta,
          formatCode.isAcceptableOrUnknown(
              data['format_code']!, _formatCodeMeta));
    } else if (isInserting) {
      context.missing(_formatCodeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date_start')) {
      context.handle(_dateStartMeta,
          dateStart.isAcceptableOrUnknown(data['date_start']!, _dateStartMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  RotationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RotationData(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      formatCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}format_code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      dateStart: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_start']),
    );
  }

  @override
  Rotation createAlias(String alias) {
    return Rotation(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [];
  @override
  bool get dontWriteConstraints => true;
}

class RotationCycleData extends DataClass
    implements Insertable<RotationCycleData> {
  final String rotationCode;
  final String cycleCode;
  const RotationCycleData(
      {required this.rotationCode, required this.cycleCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['rotation_code'] = Variable<String>(rotationCode);
    map['cycle_code'] = Variable<String>(cycleCode);
    return map;
  }

  RotationCycleCompanion toCompanion(bool nullToAbsent) {
    return RotationCycleCompanion(
      rotationCode: Value(rotationCode),
      cycleCode: Value(cycleCode),
    );
  }

  factory RotationCycleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RotationCycleData(
      rotationCode: serializer.fromJson<String>(json['rotation_code']),
      cycleCode: serializer.fromJson<String>(json['cycle_code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'rotation_code': serializer.toJson<String>(rotationCode),
      'cycle_code': serializer.toJson<String>(cycleCode),
    };
  }

  RotationCycleData copyWith({String? rotationCode, String? cycleCode}) =>
      RotationCycleData(
        rotationCode: rotationCode ?? this.rotationCode,
        cycleCode: cycleCode ?? this.cycleCode,
      );
  @override
  String toString() {
    return (StringBuffer('RotationCycleData(')
          ..write('rotationCode: $rotationCode, ')
          ..write('cycleCode: $cycleCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(rotationCode, cycleCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RotationCycleData &&
          other.rotationCode == this.rotationCode &&
          other.cycleCode == this.cycleCode);
}

class RotationCycleCompanion extends UpdateCompanion<RotationCycleData> {
  final Value<String> rotationCode;
  final Value<String> cycleCode;
  const RotationCycleCompanion({
    this.rotationCode = const Value.absent(),
    this.cycleCode = const Value.absent(),
  });
  RotationCycleCompanion.insert({
    required String rotationCode,
    required String cycleCode,
  })  : rotationCode = Value(rotationCode),
        cycleCode = Value(cycleCode);
  static Insertable<RotationCycleData> custom({
    Expression<String>? rotationCode,
    Expression<String>? cycleCode,
  }) {
    return RawValuesInsertable({
      if (rotationCode != null) 'rotation_code': rotationCode,
      if (cycleCode != null) 'cycle_code': cycleCode,
    });
  }

  RotationCycleCompanion copyWith(
      {Value<String>? rotationCode, Value<String>? cycleCode}) {
    return RotationCycleCompanion(
      rotationCode: rotationCode ?? this.rotationCode,
      cycleCode: cycleCode ?? this.cycleCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (rotationCode.present) {
      map['rotation_code'] = Variable<String>(rotationCode.value);
    }
    if (cycleCode.present) {
      map['cycle_code'] = Variable<String>(cycleCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RotationCycleCompanion(')
          ..write('rotationCode: $rotationCode, ')
          ..write('cycleCode: $cycleCode')
          ..write(')'))
        .toString();
  }
}

class RotationCycle extends Table
    with TableInfo<RotationCycle, RotationCycleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  RotationCycle(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _rotationCodeMeta =
      const VerificationMeta('rotationCode');
  late final GeneratedColumn<String> rotationCode = GeneratedColumn<String>(
      'rotation_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _cycleCodeMeta =
      const VerificationMeta('cycleCode');
  late final GeneratedColumn<String> cycleCode = GeneratedColumn<String>(
      'cycle_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [rotationCode, cycleCode];
  @override
  String get aliasedName => _alias ?? 'rotation_cycle';
  @override
  String get actualTableName => 'rotation_cycle';
  @override
  VerificationContext validateIntegrity(Insertable<RotationCycleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('rotation_code')) {
      context.handle(
          _rotationCodeMeta,
          rotationCode.isAcceptableOrUnknown(
              data['rotation_code']!, _rotationCodeMeta));
    } else if (isInserting) {
      context.missing(_rotationCodeMeta);
    }
    if (data.containsKey('cycle_code')) {
      context.handle(_cycleCodeMeta,
          cycleCode.isAcceptableOrUnknown(data['cycle_code']!, _cycleCodeMeta));
    } else if (isInserting) {
      context.missing(_cycleCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rotationCode, cycleCode};
  @override
  RotationCycleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RotationCycleData(
      rotationCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rotation_code'])!,
      cycleCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cycle_code'])!,
    );
  }

  @override
  RotationCycle createAlias(String alias) {
    return RotationCycle(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['PRIMARY KEY(rotation_code, cycle_code)'];
  @override
  bool get dontWriteConstraints => true;
}

class MwlData extends DataClass implements Insertable<MwlData> {
  final String code;
  final String formatCode;
  final String name;
  final DateTime? dateStart;
  final int? runnerPoints;
  final int? corpPoints;
  const MwlData(
      {required this.code,
      required this.formatCode,
      required this.name,
      this.dateStart,
      this.runnerPoints,
      this.corpPoints});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['format_code'] = Variable<String>(formatCode);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || dateStart != null) {
      map['date_start'] = Variable<DateTime>(dateStart);
    }
    if (!nullToAbsent || runnerPoints != null) {
      map['runner_points'] = Variable<int>(runnerPoints);
    }
    if (!nullToAbsent || corpPoints != null) {
      map['corp_points'] = Variable<int>(corpPoints);
    }
    return map;
  }

  MwlCompanion toCompanion(bool nullToAbsent) {
    return MwlCompanion(
      code: Value(code),
      formatCode: Value(formatCode),
      name: Value(name),
      dateStart: dateStart == null && nullToAbsent
          ? const Value.absent()
          : Value(dateStart),
      runnerPoints: runnerPoints == null && nullToAbsent
          ? const Value.absent()
          : Value(runnerPoints),
      corpPoints: corpPoints == null && nullToAbsent
          ? const Value.absent()
          : Value(corpPoints),
    );
  }

  factory MwlData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MwlData(
      code: serializer.fromJson<String>(json['code']),
      formatCode: serializer.fromJson<String>(json['format_code']),
      name: serializer.fromJson<String>(json['name']),
      dateStart: serializer.fromJson<DateTime?>(json['date_start']),
      runnerPoints: serializer.fromJson<int?>(json['runner_points']),
      corpPoints: serializer.fromJson<int?>(json['corp_points']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'format_code': serializer.toJson<String>(formatCode),
      'name': serializer.toJson<String>(name),
      'date_start': serializer.toJson<DateTime?>(dateStart),
      'runner_points': serializer.toJson<int?>(runnerPoints),
      'corp_points': serializer.toJson<int?>(corpPoints),
    };
  }

  MwlData copyWith(
          {String? code,
          String? formatCode,
          String? name,
          Value<DateTime?> dateStart = const Value.absent(),
          Value<int?> runnerPoints = const Value.absent(),
          Value<int?> corpPoints = const Value.absent()}) =>
      MwlData(
        code: code ?? this.code,
        formatCode: formatCode ?? this.formatCode,
        name: name ?? this.name,
        dateStart: dateStart.present ? dateStart.value : this.dateStart,
        runnerPoints:
            runnerPoints.present ? runnerPoints.value : this.runnerPoints,
        corpPoints: corpPoints.present ? corpPoints.value : this.corpPoints,
      );
  @override
  String toString() {
    return (StringBuffer('MwlData(')
          ..write('code: $code, ')
          ..write('formatCode: $formatCode, ')
          ..write('name: $name, ')
          ..write('dateStart: $dateStart, ')
          ..write('runnerPoints: $runnerPoints, ')
          ..write('corpPoints: $corpPoints')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(code, formatCode, name, dateStart, runnerPoints, corpPoints);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MwlData &&
          other.code == this.code &&
          other.formatCode == this.formatCode &&
          other.name == this.name &&
          other.dateStart == this.dateStart &&
          other.runnerPoints == this.runnerPoints &&
          other.corpPoints == this.corpPoints);
}

class MwlCompanion extends UpdateCompanion<MwlData> {
  final Value<String> code;
  final Value<String> formatCode;
  final Value<String> name;
  final Value<DateTime?> dateStart;
  final Value<int?> runnerPoints;
  final Value<int?> corpPoints;
  const MwlCompanion({
    this.code = const Value.absent(),
    this.formatCode = const Value.absent(),
    this.name = const Value.absent(),
    this.dateStart = const Value.absent(),
    this.runnerPoints = const Value.absent(),
    this.corpPoints = const Value.absent(),
  });
  MwlCompanion.insert({
    required String code,
    required String formatCode,
    required String name,
    this.dateStart = const Value.absent(),
    this.runnerPoints = const Value.absent(),
    this.corpPoints = const Value.absent(),
  })  : code = Value(code),
        formatCode = Value(formatCode),
        name = Value(name);
  static Insertable<MwlData> custom({
    Expression<String>? code,
    Expression<String>? formatCode,
    Expression<String>? name,
    Expression<DateTime>? dateStart,
    Expression<int>? runnerPoints,
    Expression<int>? corpPoints,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (formatCode != null) 'format_code': formatCode,
      if (name != null) 'name': name,
      if (dateStart != null) 'date_start': dateStart,
      if (runnerPoints != null) 'runner_points': runnerPoints,
      if (corpPoints != null) 'corp_points': corpPoints,
    });
  }

  MwlCompanion copyWith(
      {Value<String>? code,
      Value<String>? formatCode,
      Value<String>? name,
      Value<DateTime?>? dateStart,
      Value<int?>? runnerPoints,
      Value<int?>? corpPoints}) {
    return MwlCompanion(
      code: code ?? this.code,
      formatCode: formatCode ?? this.formatCode,
      name: name ?? this.name,
      dateStart: dateStart ?? this.dateStart,
      runnerPoints: runnerPoints ?? this.runnerPoints,
      corpPoints: corpPoints ?? this.corpPoints,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (formatCode.present) {
      map['format_code'] = Variable<String>(formatCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dateStart.present) {
      map['date_start'] = Variable<DateTime>(dateStart.value);
    }
    if (runnerPoints.present) {
      map['runner_points'] = Variable<int>(runnerPoints.value);
    }
    if (corpPoints.present) {
      map['corp_points'] = Variable<int>(corpPoints.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MwlCompanion(')
          ..write('code: $code, ')
          ..write('formatCode: $formatCode, ')
          ..write('name: $name, ')
          ..write('dateStart: $dateStart, ')
          ..write('runnerPoints: $runnerPoints, ')
          ..write('corpPoints: $corpPoints')
          ..write(')'))
        .toString();
  }
}

class Mwl extends Table with TableInfo<Mwl, MwlData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Mwl(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _formatCodeMeta =
      const VerificationMeta('formatCode');
  late final GeneratedColumn<String> formatCode = GeneratedColumn<String>(
      'format_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _dateStartMeta =
      const VerificationMeta('dateStart');
  late final GeneratedColumn<DateTime> dateStart = GeneratedColumn<DateTime>(
      'date_start', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _runnerPointsMeta =
      const VerificationMeta('runnerPoints');
  late final GeneratedColumn<int> runnerPoints = GeneratedColumn<int>(
      'runner_points', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _corpPointsMeta =
      const VerificationMeta('corpPoints');
  late final GeneratedColumn<int> corpPoints = GeneratedColumn<int>(
      'corp_points', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [code, formatCode, name, dateStart, runnerPoints, corpPoints];
  @override
  String get aliasedName => _alias ?? 'mwl';
  @override
  String get actualTableName => 'mwl';
  @override
  VerificationContext validateIntegrity(Insertable<MwlData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('format_code')) {
      context.handle(
          _formatCodeMeta,
          formatCode.isAcceptableOrUnknown(
              data['format_code']!, _formatCodeMeta));
    } else if (isInserting) {
      context.missing(_formatCodeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date_start')) {
      context.handle(_dateStartMeta,
          dateStart.isAcceptableOrUnknown(data['date_start']!, _dateStartMeta));
    }
    if (data.containsKey('runner_points')) {
      context.handle(
          _runnerPointsMeta,
          runnerPoints.isAcceptableOrUnknown(
              data['runner_points']!, _runnerPointsMeta));
    }
    if (data.containsKey('corp_points')) {
      context.handle(
          _corpPointsMeta,
          corpPoints.isAcceptableOrUnknown(
              data['corp_points']!, _corpPointsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  MwlData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MwlData(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      formatCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}format_code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      dateStart: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_start']),
      runnerPoints: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}runner_points']),
      corpPoints: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}corp_points']),
    );
  }

  @override
  Mwl createAlias(String alias) {
    return Mwl(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [];
  @override
  bool get dontWriteConstraints => true;
}

class MwlCardData extends DataClass implements Insertable<MwlCardData> {
  final String mwlCode;
  final String cardTitle;
  final bool isRestricted;
  final int? globalPenalty;
  final int? universalFactionCost;
  final int? deckLimit;
  final int? points;
  const MwlCardData(
      {required this.mwlCode,
      required this.cardTitle,
      required this.isRestricted,
      this.globalPenalty,
      this.universalFactionCost,
      this.deckLimit,
      this.points});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mwl_code'] = Variable<String>(mwlCode);
    map['card_title'] = Variable<String>(cardTitle);
    map['is_restricted'] = Variable<bool>(isRestricted);
    if (!nullToAbsent || globalPenalty != null) {
      map['global_penalty'] = Variable<int>(globalPenalty);
    }
    if (!nullToAbsent || universalFactionCost != null) {
      map['universal_faction_cost'] = Variable<int>(universalFactionCost);
    }
    if (!nullToAbsent || deckLimit != null) {
      map['deck_limit'] = Variable<int>(deckLimit);
    }
    if (!nullToAbsent || points != null) {
      map['points'] = Variable<int>(points);
    }
    return map;
  }

  MwlCardCompanion toCompanion(bool nullToAbsent) {
    return MwlCardCompanion(
      mwlCode: Value(mwlCode),
      cardTitle: Value(cardTitle),
      isRestricted: Value(isRestricted),
      globalPenalty: globalPenalty == null && nullToAbsent
          ? const Value.absent()
          : Value(globalPenalty),
      universalFactionCost: universalFactionCost == null && nullToAbsent
          ? const Value.absent()
          : Value(universalFactionCost),
      deckLimit: deckLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(deckLimit),
      points:
          points == null && nullToAbsent ? const Value.absent() : Value(points),
    );
  }

  factory MwlCardData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MwlCardData(
      mwlCode: serializer.fromJson<String>(json['mwl_code']),
      cardTitle: serializer.fromJson<String>(json['card_title']),
      isRestricted: serializer.fromJson<bool>(json['is_restricted']),
      globalPenalty: serializer.fromJson<int?>(json['global_penalty']),
      universalFactionCost:
          serializer.fromJson<int?>(json['universal_faction_cost']),
      deckLimit: serializer.fromJson<int?>(json['deck_limit']),
      points: serializer.fromJson<int?>(json['points']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mwl_code': serializer.toJson<String>(mwlCode),
      'card_title': serializer.toJson<String>(cardTitle),
      'is_restricted': serializer.toJson<bool>(isRestricted),
      'global_penalty': serializer.toJson<int?>(globalPenalty),
      'universal_faction_cost': serializer.toJson<int?>(universalFactionCost),
      'deck_limit': serializer.toJson<int?>(deckLimit),
      'points': serializer.toJson<int?>(points),
    };
  }

  MwlCardData copyWith(
          {String? mwlCode,
          String? cardTitle,
          bool? isRestricted,
          Value<int?> globalPenalty = const Value.absent(),
          Value<int?> universalFactionCost = const Value.absent(),
          Value<int?> deckLimit = const Value.absent(),
          Value<int?> points = const Value.absent()}) =>
      MwlCardData(
        mwlCode: mwlCode ?? this.mwlCode,
        cardTitle: cardTitle ?? this.cardTitle,
        isRestricted: isRestricted ?? this.isRestricted,
        globalPenalty:
            globalPenalty.present ? globalPenalty.value : this.globalPenalty,
        universalFactionCost: universalFactionCost.present
            ? universalFactionCost.value
            : this.universalFactionCost,
        deckLimit: deckLimit.present ? deckLimit.value : this.deckLimit,
        points: points.present ? points.value : this.points,
      );
  @override
  String toString() {
    return (StringBuffer('MwlCardData(')
          ..write('mwlCode: $mwlCode, ')
          ..write('cardTitle: $cardTitle, ')
          ..write('isRestricted: $isRestricted, ')
          ..write('globalPenalty: $globalPenalty, ')
          ..write('universalFactionCost: $universalFactionCost, ')
          ..write('deckLimit: $deckLimit, ')
          ..write('points: $points')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(mwlCode, cardTitle, isRestricted,
      globalPenalty, universalFactionCost, deckLimit, points);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MwlCardData &&
          other.mwlCode == this.mwlCode &&
          other.cardTitle == this.cardTitle &&
          other.isRestricted == this.isRestricted &&
          other.globalPenalty == this.globalPenalty &&
          other.universalFactionCost == this.universalFactionCost &&
          other.deckLimit == this.deckLimit &&
          other.points == this.points);
}

class MwlCardCompanion extends UpdateCompanion<MwlCardData> {
  final Value<String> mwlCode;
  final Value<String> cardTitle;
  final Value<bool> isRestricted;
  final Value<int?> globalPenalty;
  final Value<int?> universalFactionCost;
  final Value<int?> deckLimit;
  final Value<int?> points;
  const MwlCardCompanion({
    this.mwlCode = const Value.absent(),
    this.cardTitle = const Value.absent(),
    this.isRestricted = const Value.absent(),
    this.globalPenalty = const Value.absent(),
    this.universalFactionCost = const Value.absent(),
    this.deckLimit = const Value.absent(),
    this.points = const Value.absent(),
  });
  MwlCardCompanion.insert({
    required String mwlCode,
    required String cardTitle,
    required bool isRestricted,
    this.globalPenalty = const Value.absent(),
    this.universalFactionCost = const Value.absent(),
    this.deckLimit = const Value.absent(),
    this.points = const Value.absent(),
  })  : mwlCode = Value(mwlCode),
        cardTitle = Value(cardTitle),
        isRestricted = Value(isRestricted);
  static Insertable<MwlCardData> custom({
    Expression<String>? mwlCode,
    Expression<String>? cardTitle,
    Expression<bool>? isRestricted,
    Expression<int>? globalPenalty,
    Expression<int>? universalFactionCost,
    Expression<int>? deckLimit,
    Expression<int>? points,
  }) {
    return RawValuesInsertable({
      if (mwlCode != null) 'mwl_code': mwlCode,
      if (cardTitle != null) 'card_title': cardTitle,
      if (isRestricted != null) 'is_restricted': isRestricted,
      if (globalPenalty != null) 'global_penalty': globalPenalty,
      if (universalFactionCost != null)
        'universal_faction_cost': universalFactionCost,
      if (deckLimit != null) 'deck_limit': deckLimit,
      if (points != null) 'points': points,
    });
  }

  MwlCardCompanion copyWith(
      {Value<String>? mwlCode,
      Value<String>? cardTitle,
      Value<bool>? isRestricted,
      Value<int?>? globalPenalty,
      Value<int?>? universalFactionCost,
      Value<int?>? deckLimit,
      Value<int?>? points}) {
    return MwlCardCompanion(
      mwlCode: mwlCode ?? this.mwlCode,
      cardTitle: cardTitle ?? this.cardTitle,
      isRestricted: isRestricted ?? this.isRestricted,
      globalPenalty: globalPenalty ?? this.globalPenalty,
      universalFactionCost: universalFactionCost ?? this.universalFactionCost,
      deckLimit: deckLimit ?? this.deckLimit,
      points: points ?? this.points,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mwlCode.present) {
      map['mwl_code'] = Variable<String>(mwlCode.value);
    }
    if (cardTitle.present) {
      map['card_title'] = Variable<String>(cardTitle.value);
    }
    if (isRestricted.present) {
      map['is_restricted'] = Variable<bool>(isRestricted.value);
    }
    if (globalPenalty.present) {
      map['global_penalty'] = Variable<int>(globalPenalty.value);
    }
    if (universalFactionCost.present) {
      map['universal_faction_cost'] = Variable<int>(universalFactionCost.value);
    }
    if (deckLimit.present) {
      map['deck_limit'] = Variable<int>(deckLimit.value);
    }
    if (points.present) {
      map['points'] = Variable<int>(points.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MwlCardCompanion(')
          ..write('mwlCode: $mwlCode, ')
          ..write('cardTitle: $cardTitle, ')
          ..write('isRestricted: $isRestricted, ')
          ..write('globalPenalty: $globalPenalty, ')
          ..write('universalFactionCost: $universalFactionCost, ')
          ..write('deckLimit: $deckLimit, ')
          ..write('points: $points')
          ..write(')'))
        .toString();
  }
}

class MwlCard extends Table with TableInfo<MwlCard, MwlCardData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  MwlCard(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mwlCodeMeta =
      const VerificationMeta('mwlCode');
  late final GeneratedColumn<String> mwlCode = GeneratedColumn<String>(
      'mwl_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _cardTitleMeta =
      const VerificationMeta('cardTitle');
  late final GeneratedColumn<String> cardTitle = GeneratedColumn<String>(
      'card_title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _isRestrictedMeta =
      const VerificationMeta('isRestricted');
  late final GeneratedColumn<bool> isRestricted = GeneratedColumn<bool>(
      'is_restricted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _globalPenaltyMeta =
      const VerificationMeta('globalPenalty');
  late final GeneratedColumn<int> globalPenalty = GeneratedColumn<int>(
      'global_penalty', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _universalFactionCostMeta =
      const VerificationMeta('universalFactionCost');
  late final GeneratedColumn<int> universalFactionCost = GeneratedColumn<int>(
      'universal_faction_cost', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _deckLimitMeta =
      const VerificationMeta('deckLimit');
  late final GeneratedColumn<int> deckLimit = GeneratedColumn<int>(
      'deck_limit', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _pointsMeta = const VerificationMeta('points');
  late final GeneratedColumn<int> points = GeneratedColumn<int>(
      'points', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        mwlCode,
        cardTitle,
        isRestricted,
        globalPenalty,
        universalFactionCost,
        deckLimit,
        points
      ];
  @override
  String get aliasedName => _alias ?? 'mwl_card';
  @override
  String get actualTableName => 'mwl_card';
  @override
  VerificationContext validateIntegrity(Insertable<MwlCardData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mwl_code')) {
      context.handle(_mwlCodeMeta,
          mwlCode.isAcceptableOrUnknown(data['mwl_code']!, _mwlCodeMeta));
    } else if (isInserting) {
      context.missing(_mwlCodeMeta);
    }
    if (data.containsKey('card_title')) {
      context.handle(_cardTitleMeta,
          cardTitle.isAcceptableOrUnknown(data['card_title']!, _cardTitleMeta));
    } else if (isInserting) {
      context.missing(_cardTitleMeta);
    }
    if (data.containsKey('is_restricted')) {
      context.handle(
          _isRestrictedMeta,
          isRestricted.isAcceptableOrUnknown(
              data['is_restricted']!, _isRestrictedMeta));
    } else if (isInserting) {
      context.missing(_isRestrictedMeta);
    }
    if (data.containsKey('global_penalty')) {
      context.handle(
          _globalPenaltyMeta,
          globalPenalty.isAcceptableOrUnknown(
              data['global_penalty']!, _globalPenaltyMeta));
    }
    if (data.containsKey('universal_faction_cost')) {
      context.handle(
          _universalFactionCostMeta,
          universalFactionCost.isAcceptableOrUnknown(
              data['universal_faction_cost']!, _universalFactionCostMeta));
    }
    if (data.containsKey('deck_limit')) {
      context.handle(_deckLimitMeta,
          deckLimit.isAcceptableOrUnknown(data['deck_limit']!, _deckLimitMeta));
    }
    if (data.containsKey('points')) {
      context.handle(_pointsMeta,
          points.isAcceptableOrUnknown(data['points']!, _pointsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mwlCode, cardTitle};
  @override
  MwlCardData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MwlCardData(
      mwlCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mwl_code'])!,
      cardTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_title'])!,
      isRestricted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_restricted'])!,
      globalPenalty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}global_penalty']),
      universalFactionCost: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}universal_faction_cost']),
      deckLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deck_limit']),
      points: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}points']),
    );
  }

  @override
  MwlCard createAlias(String alias) {
    return MwlCard(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['PRIMARY KEY(mwl_code, card_title)'];
  @override
  bool get dontWriteConstraints => true;
}

class FormatData extends DataClass implements Insertable<FormatData> {
  final int id;
  final String code;
  final String name;
  const FormatData({required this.id, required this.code, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    return map;
  }

  FormatCompanion toCompanion(bool nullToAbsent) {
    return FormatCompanion(
      id: Value(id),
      code: Value(code),
      name: Value(name),
    );
  }

  factory FormatData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormatData(
      id: serializer.fromJson<int>(json['id']),
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
    };
  }

  FormatData copyWith({int? id, String? code, String? name}) => FormatData(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('FormatData(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, code, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormatData &&
          other.id == this.id &&
          other.code == this.code &&
          other.name == this.name);
}

class FormatCompanion extends UpdateCompanion<FormatData> {
  final Value<int> id;
  final Value<String> code;
  final Value<String> name;
  const FormatCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.name = const Value.absent(),
  });
  FormatCompanion.insert({
    required int id,
    required String code,
    required String name,
  })  : id = Value(id),
        code = Value(code),
        name = Value(name);
  static Insertable<FormatData> custom({
    Expression<int>? id,
    Expression<String>? code,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
    });
  }

  FormatCompanion copyWith(
      {Value<int>? id, Value<String>? code, Value<String>? name}) {
    return FormatCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormatCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class Format extends Table with TableInfo<Format, FormatData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Format(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'PRIMARY KEY NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, code, name];
  @override
  String get aliasedName => _alias ?? 'format';
  @override
  String get actualTableName => 'format';
  @override
  VerificationContext validateIntegrity(Insertable<FormatData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  FormatData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormatData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  Format createAlias(String alias) {
    return Format(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final Rotation rotation = Rotation(this);
  late final RotationCycle rotationCycle = RotationCycle(this);
  late final Mwl mwl = Mwl(this);
  late final MwlCard mwlCard = MwlCard(this);
  late final Format format = Format(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [rotation, rotationCycle, mwl, mwlCard, format];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
