// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String content;
  final DateTime? startDay;
  final DateTime? endDay;
  final bool isAllday;
  Todo(
      {required this.id,
      required this.title,
      required this.content,
      this.startDay,
      this.endDay,
      required this.isAllday});
  factory Todo.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Todo(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
      startDay: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_day']),
      endDay: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_day']),
      isAllday: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_allday'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    if (!nullToAbsent || startDay != null) {
      map['start_day'] = Variable<DateTime?>(startDay);
    }
    if (!nullToAbsent || endDay != null) {
      map['end_day'] = Variable<DateTime?>(endDay);
    }
    map['is_allday'] = Variable<bool>(isAllday);
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      startDay: startDay == null && nullToAbsent
          ? const Value.absent()
          : Value(startDay),
      endDay:
          endDay == null && nullToAbsent ? const Value.absent() : Value(endDay),
      isAllday: Value(isAllday),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      startDay: serializer.fromJson<DateTime?>(json['startDay']),
      endDay: serializer.fromJson<DateTime?>(json['endDay']),
      isAllday: serializer.fromJson<bool>(json['isAllday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'startDay': serializer.toJson<DateTime?>(startDay),
      'endDay': serializer.toJson<DateTime?>(endDay),
      'isAllday': serializer.toJson<bool>(isAllday),
    };
  }

  Todo copyWith(
          {int? id,
          String? title,
          String? content,
          DateTime? startDay,
          DateTime? endDay,
          bool? isAllday}) =>
      Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        startDay: startDay ?? this.startDay,
        endDay: endDay ?? this.endDay,
        isAllday: isAllday ?? this.isAllday,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('startDay: $startDay, ')
          ..write('endDay: $endDay, ')
          ..write('isAllday: $isAllday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, startDay, endDay, isAllday);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.startDay == this.startDay &&
          other.endDay == this.endDay &&
          other.isAllday == this.isAllday);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<DateTime?> startDay;
  final Value<DateTime?> endDay;
  final Value<bool> isAllday;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.startDay = const Value.absent(),
    this.endDay = const Value.absent(),
    this.isAllday = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.content = const Value.absent(),
    this.startDay = const Value.absent(),
    this.endDay = const Value.absent(),
    this.isAllday = const Value.absent(),
  }) : title = Value(title);
  static Insertable<Todo> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime?>? startDay,
    Expression<DateTime?>? endDay,
    Expression<bool>? isAllday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (startDay != null) 'start_day': startDay,
      if (endDay != null) 'end_day': endDay,
      if (isAllday != null) 'is_allday': isAllday,
    });
  }

  TodosCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<DateTime?>? startDay,
      Value<DateTime?>? endDay,
      Value<bool>? isAllday}) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      startDay: startDay ?? this.startDay,
      endDay: endDay ?? this.endDay,
      isAllday: isAllday ?? this.isAllday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (startDay.present) {
      map['start_day'] = Variable<DateTime?>(startDay.value);
    }
    if (endDay.present) {
      map['end_day'] = Variable<DateTime?>(endDay.value);
    }
    if (isAllday.present) {
      map['is_allday'] = Variable<bool>(isAllday.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('startDay: $startDay, ')
          ..write('endDay: $endDay, ')
          ..write('isAllday: $isAllday')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title =
      GeneratedColumn<String?>('title', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: const StringType(),
          requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _startDayMeta = const VerificationMeta('startDay');
  @override
  late final GeneratedColumn<DateTime?> startDay = GeneratedColumn<DateTime?>(
      'start_day', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _endDayMeta = const VerificationMeta('endDay');
  @override
  late final GeneratedColumn<DateTime?> endDay = GeneratedColumn<DateTime?>(
      'end_day', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isAlldayMeta = const VerificationMeta('isAllday');
  @override
  late final GeneratedColumn<bool?> isAllday = GeneratedColumn<bool?>(
      'is_allday', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_allday IN (0, 1))',
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, startDay, endDay, isAllday];
  @override
  String get aliasedName => _alias ?? 'todos';
  @override
  String get actualTableName => 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('start_day')) {
      context.handle(_startDayMeta,
          startDay.isAcceptableOrUnknown(data['start_day']!, _startDayMeta));
    }
    if (data.containsKey('end_day')) {
      context.handle(_endDayMeta,
          endDay.isAcceptableOrUnknown(data['end_day']!, _endDayMeta));
    }
    if (data.containsKey('is_allday')) {
      context.handle(_isAlldayMeta,
          isAllday.isAcceptableOrUnknown(data['is_allday']!, _isAlldayMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Todo.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TodosTable todos = $TodosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}