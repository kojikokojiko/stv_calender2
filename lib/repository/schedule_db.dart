import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

// assuming that your file is called filename.dart. This will give an error at
// first, but it's needed for drift to know about the generated code
part 'schedule_db.g.dart';


class TodoItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1)();

  TextColumn get comment => text().withDefault(const Constant(''))();

  DateTimeColumn get startDay => dateTime().nullable()();

  DateTimeColumn get endDay => dateTime().nullable()();

  BoolColumn get isAllday => boolean().withDefault(const Constant(true))();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  // これは、ファイルのロケーションを探すのに使えるLazyDatabase utilを許可します。
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    // ここに、db.sqliteというファイルを、あなたのアプリのドキュメントフォルダに置きます。
    final dbFolder = await getApplicationDocumentsDirectory();
    //Path to a directory where the application may place data that is user-generated, or that cannot otherwise be recreated by your application.
    //データを配置することができるディレクトリのパス。
    final file = File(p.join(dbFolder.path, 'db3.sqlite'));
    return NativeDatabase(file);
  });
}

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [TodoItem])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //7
  //以下追記
  Stream<List<TodoItemData>> watchEntries() {
    return (select(todoItem)).watch();
  }

  Stream<List<TodoItemData>> watchSamedayEntries(DateTime selectday) {
    return (select(todoItem)
          ..where((tbl) =>
              tbl.startDay.year.equals(selectday.year) &
              tbl.startDay.month.equals(selectday.month) &
              tbl.startDay.day.equals(selectday.day)))
        .watch();
  }

  // bool isSameDate(DateTime a,DateTime b){
  //   if(a.year==b.year&&a.month==b.month&&a.day==b.day){
  //     return true;
  //   }else{
  //     return false;
  //   }
  // }
  //8
  //全てのデータ取得
  Future<List<TodoItemData>> readAllTodoData() => select(todoItem).get();
  //SELECT * FROM ToDoItemTable

  // Stream<Todo> todoById(int id) {
  //   return (select(todos)..where((t) => t.id.equals(id))).watchSingle();
  // }

  Future writeTodo(TodoItemCompanion data) {
    return into(todoItem).insert(data);
  }

  Future updateTodo(TodoItemData data) {
    return update(todoItem).replace(data);
  }

  Future deleteTodo(int id) {
    return (delete(todoItem)..where((tbl) => tbl.id.equals(id))).go();
  }
}
