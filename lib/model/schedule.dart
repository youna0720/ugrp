import 'package:drift/drift.dart';

class Schedules extends Table {
  // PRIMARY KEY
  // CONTENT, DATE, STARTTIME, ENDTIME, COLORID, CREATEDAT
  // 'asdff', 2021-1-2, 12, 14, 1, 2021-3-5
  // 1
  // 2
  // 3

  // Category Color Table ID
  IntColumn get calory => integer()();
  IntColumn get totaltime => integer()();

  // 생성날짜
  DateTimeColumn get createdAt => dateTime().clientDefault(
        () => DateTime.now(),
  )();
}