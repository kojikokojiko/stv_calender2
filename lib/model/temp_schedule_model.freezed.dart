// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TempTodoItemData {
  String? get title => throw _privateConstructorUsedError;
  bool? get isAllDay => throw _privateConstructorUsedError;
  DateTime? get startDay => throw _privateConstructorUsedError;
  DateTime? get endDay => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempTodoItemDataCopyWith<TempTodoItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempTodoItemDataCopyWith<$Res> {
  factory $TempTodoItemDataCopyWith(
          TempTodoItemData value, $Res Function(TempTodoItemData) then) =
      _$TempTodoItemDataCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      bool? isAllDay,
      DateTime? startDay,
      DateTime? endDay,
      String? comment});
}

/// @nodoc
class _$TempTodoItemDataCopyWithImpl<$Res>
    implements $TempTodoItemDataCopyWith<$Res> {
  _$TempTodoItemDataCopyWithImpl(this._value, this._then);

  final TempTodoItemData _value;
  // ignore: unused_field
  final $Res Function(TempTodoItemData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? isAllDay = freezed,
    Object? startDay = freezed,
    Object? endDay = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllDay: isAllDay == freezed
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDay: startDay == freezed
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDay: endDay == freezed
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TempTodoItemDataCopyWith<$Res>
    implements $TempTodoItemDataCopyWith<$Res> {
  factory _$$_TempTodoItemDataCopyWith(
          _$_TempTodoItemData value, $Res Function(_$_TempTodoItemData) then) =
      __$$_TempTodoItemDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      bool? isAllDay,
      DateTime? startDay,
      DateTime? endDay,
      String? comment});
}

/// @nodoc
class __$$_TempTodoItemDataCopyWithImpl<$Res>
    extends _$TempTodoItemDataCopyWithImpl<$Res>
    implements _$$_TempTodoItemDataCopyWith<$Res> {
  __$$_TempTodoItemDataCopyWithImpl(
      _$_TempTodoItemData _value, $Res Function(_$_TempTodoItemData) _then)
      : super(_value, (v) => _then(v as _$_TempTodoItemData));

  @override
  _$_TempTodoItemData get _value => super._value as _$_TempTodoItemData;

  @override
  $Res call({
    Object? title = freezed,
    Object? isAllDay = freezed,
    Object? startDay = freezed,
    Object? endDay = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_TempTodoItemData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllDay: isAllDay == freezed
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDay: startDay == freezed
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDay: endDay == freezed
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TempTodoItemData implements _TempTodoItemData {
  const _$_TempTodoItemData(
      {this.title = null,
      this.isAllDay = null,
      this.startDay = null,
      this.endDay = null,
      this.comment = null});

  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final bool? isAllDay;
  @override
  @JsonKey()
  final DateTime? startDay;
  @override
  @JsonKey()
  final DateTime? endDay;
  @override
  @JsonKey()
  final String? comment;

  @override
  String toString() {
    return 'TempTodoItemData(title: $title, isAllDay: $isAllDay, startDay: $startDay, endDay: $endDay, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempTodoItemData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isAllDay, isAllDay) &&
            const DeepCollectionEquality().equals(other.startDay, startDay) &&
            const DeepCollectionEquality().equals(other.endDay, endDay) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isAllDay),
      const DeepCollectionEquality().hash(startDay),
      const DeepCollectionEquality().hash(endDay),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$$_TempTodoItemDataCopyWith<_$_TempTodoItemData> get copyWith =>
      __$$_TempTodoItemDataCopyWithImpl<_$_TempTodoItemData>(this, _$identity);
}

abstract class _TempTodoItemData implements TempTodoItemData {
  const factory _TempTodoItemData(
      {final String? title,
      final bool? isAllDay,
      final DateTime? startDay,
      final DateTime? endDay,
      final String? comment}) = _$_TempTodoItemData;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get isAllDay => throw _privateConstructorUsedError;
  @override
  DateTime? get startDay => throw _privateConstructorUsedError;
  @override
  DateTime? get endDay => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TempTodoItemDataCopyWith<_$_TempTodoItemData> get copyWith =>
      throw _privateConstructorUsedError;
}
