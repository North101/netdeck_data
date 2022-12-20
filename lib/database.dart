import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(include: {
  'sql/format.drift',
  'sql/mwl_card.drift',
  'sql/mwl.drift',
  'sql/rotation_cycle.drift',
  'sql/rotation.drift',
})
class Database extends _$Database {
  Database() : super(_openConnection());

  static Future<File> dbFilename() async {
    final dbFolder = Directory.current;
    return File(p.join(dbFolder.path, 'db.sqlite'));
  }

  static Future<FileSystemEntity> deleteDatabase() async {
    final filename = await dbFilename();
    return filename.delete();
  }

  @override
  int schemaVersion = 0;

  //@override
  //MigrationStrategy get migration => migrationStrategy(this);
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final file = await Database.dbFilename();
    return NativeDatabase.createInBackground(file);
  });
}