// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class TodoItemData extends DataClass implements Insertable<TodoItemData> {
  final int id;
  final String title;
  final String comment;
  final DateTime? startDay;
  final DateTime? endDay;
  final bool isAllday;
  TodoItemData(
      {required this.id,
      required this.title,
      required this.comment,
      this.startDay,
      this.endDay,
      required this.isAllday});
  factory TodoItemData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TodoItemData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      comment: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comment'])!,
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
    map['comment'] = Variable<String>(comment);
    if (!nullToAbsent || startDay != null) {
      map['start_day'] = Variable<DateTime?>(startDay);
    }
    if (!nullToAbsent || endDay != null) {
      map['end_day'] = Variable<DateTime?>(endDay);
    }
    map['is_allday'] = Variable<bool>(isAllday);
    return map;
  }

  TodoItemCompanion toCompanion(bool nullToAbsent) {
    return TodoItemCompanion(
      id: Value(id),
      title: Value(title),
      comment: Value(comment),
      startDay: startDay == null && nullToAbsent
          ? const Value.absent()
          : Value(startDay),
      endDay:
          endDay == null && nullToAbsent ? const Value.absent() : Value(endDay),
      isAllday: Value(isAllday),
    );
  }

  factory TodoItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItemData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      comment: serializer.fromJson<String>(json['comment']),
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
      'comment': serializer.toJson<String>(comment),
      'startDay': serializer.toJson<DateTime?>(startDay),
      'endDay': serializer.toJson<DateTime?>(endDay),
      'isAllday': serializer.toJson<bool>(isAllday),
    };
  }

  TodoItemData copyWith(
          {int? id,
          String? title,
          String? comment,
          DateTime? startDay,
          DateTime? endDay,
          bool? isAllday}) =>
      TodoItemData(
        id: id ?? this.id,
        title: title ?? this.title,
        comment: comment ?? this.comment,
        startDay: startDay ?? this.startDay,
        endDay: endDay ?? this.endDay,
        isAllday: isAllday ?? this.isAllday,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItemData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('comment: $comment, ')
          ..write('startDay: $startDay, ')
          ..write('endDay: $endDay, ')
          ..write('isAllday: $isAllday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, comment, startDay, endDay, isAllday);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItemData &&
          other.id == this.id &&
          other.title == this.title &&
          other.comment == this.comment &&
          other.startDay == this.startDay &&
          other.endDay == this.endDay &&
          other.isAllday == this.isAllday);
}

class TodoItemCompanion extends UpdateCompanion<TodoItemData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> comment;
  final Value<DateTime?> startDay;
  final Value<DateTime?> endDay;
  final Value<bool> isAllday;
  const TodoItemCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.comment = const Value.absent(),
    this.startDay = const Value.absent(),
    this.endDay = const Value.absent(),
    this.isAllday = const Value.absent(),
  });
  TodoItemCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.comment = const Value.absent(),
    this.startDay = const Value.absent(),
    this.endDay = const Value.absent(),
    this.isAllday = const Value.absent(),
  }) : title = Value(title);
  static Insertable<TodoItemData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? comment,
    Expression<DateTime?>? startDay,
    Expression<DateTime?>? endDay,
    Expression<bool>? isAllday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (comment != null) 'comment': comment,
      if (startDay != null) 'start_day': startDay,
      if (endDay != null) 'end_day': endDay,
      if (isAllday != null) 'is_allday': isAllday,
    });
  }

  TodoItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? comment,
      Value<DateTime?>? startDay,
      Value<DateTime?>? endDay,
      Value<bool>? isAllday}) {
    return TodoItemCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      comment: comment ?? this.comment,
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
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
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
    return (StringBuffer('TodoItemCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('comment: $comment, ')
          ..write('startDay: $startDay, ')
          ..write('endDay: $endDay, ')
          ..write('isAllday: $isAllday')
          ..write(')'))
        .toString();
  }
}

class $TodoItemTable extends TodoItem
    with TableInfo<$TodoItemTable, TodoItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String?> comment = GeneratedColumn<String?>(
      'comment', aliasedName, false,
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
      [id, title, comment, startDay, endDay, isAllday];
  @override
  String get aliasedName => _alias ?? 'todo_item';
  @override
  String get actualTableName => 'todo_item';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItemData> instance,
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
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
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
  TodoItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TodoItemData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TodoItemTable createAlias(String alias) {
    return $TodoItemTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TodoItemTable todoItem = $TodoItemTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todoItem];
}
