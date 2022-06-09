// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleModel {
  /// 友人の名前
  String? get title => throw _privateConstructorUsedError;
  bool? get isAllDay => throw _privateConstructorUsedError;
  DateTime? get startDay => throw _privateConstructorUsedError;
  DateTime? get endDay => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      bool? isAllDay,
      DateTime? startDay,
      DateTime? endDay,
      String? comment});
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  final ScheduleModel _value;
  // ignore: unused_field
  final $Res Function(ScheduleModel) _then;

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
abstract class _$$_ScheduleModelCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$_ScheduleModelCopyWith(
          _$_ScheduleModel value, $Res Function(_$_ScheduleModel) then) =
      __$$_ScheduleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      bool? isAllDay,
      DateTime? startDay,
      DateTime? endDay,
      String? comment});
}

/// @nodoc
class __$$_ScheduleModelCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res>
    implements _$$_ScheduleModelCopyWith<$Res> {
  __$$_ScheduleModelCopyWithImpl(
      _$_ScheduleModel _value, $Res Function(_$_ScheduleModel) _then)
      : super(_value, (v) => _then(v as _$_ScheduleModel));

  @override
  _$_ScheduleModel get _value => super._value as _$_ScheduleModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? isAllDay = freezed,
    Object? startDay = freezed,
    Object? endDay = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_ScheduleModel(
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

class _$_ScheduleModel implements _ScheduleModel {
  const _$_ScheduleModel(
      {this.title = null,
      this.isAllDay = null,
      this.startDay = null,
      this.endDay = null,
      this.comment = null});

  /// 友人の名前
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
    return 'ScheduleModel(title: $title, isAllDay: $isAllDay, startDay: $startDay, endDay: $endDay, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleModel &&
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
  _$$_ScheduleModelCopyWith<_$_ScheduleModel> get copyWith =>
      __$$_ScheduleModelCopyWithImpl<_$_ScheduleModel>(this, _$identity);
}

abstract class _ScheduleModel implements ScheduleModel {
  const factory _ScheduleModel(
      {final String? title,
      final bool? isAllDay,
      final DateTime? startDay,
      final DateTime? endDay,
      final String? comment}) = _$_ScheduleModel;

  @override

  /// 友人の名前
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
  _$$_ScheduleModelCopyWith<_$_ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
