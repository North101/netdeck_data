import 'dart:convert';

import '/data/mwl.dart';
import '/data/rotation.dart';
import '/database.dart';
import 'data/format.dart';

final jsonEncode = JsonEncoder.withIndent('  ').convert;

Future<void> updateDB() async {
  final now = DateTime.now().toUtc();
  final db = Database();

  await db.transaction(() async {
    await updateFormat(db, now);
    await updateRotation(db, now);
    await updateMwl(db, now);
  });

  await db.close();
  print('done');
}
