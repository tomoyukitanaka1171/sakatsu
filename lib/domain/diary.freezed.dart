// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryTearOff {
  const _$DiaryTearOff();

  _Diary call(
      {required String title,
      required int date,
      required String week,
      required bool isToday}) {
    return _Diary(
      title: title,
      date: date,
      week: week,
      isToday: isToday,
    );
  }
}

/// @nodoc
const $Diary = _$DiaryTearOff();

/// @nodoc
mixin _$Diary {
  String get title => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  String get week => throw _privateConstructorUsedError;
  bool get isToday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res>;
  $Res call({String title, int date, String week, bool isToday});
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res> implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  final Diary _value;
  // ignore: unused_field
  final $Res Function(Diary) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? week = freezed,
    Object? isToday = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      isToday: isToday == freezed
          ? _value.isToday
          : isToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DiaryCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$DiaryCopyWith(_Diary value, $Res Function(_Diary) then) =
      __$DiaryCopyWithImpl<$Res>;
  @override
  $Res call({String title, int date, String week, bool isToday});
}

/// @nodoc
class __$DiaryCopyWithImpl<$Res> extends _$DiaryCopyWithImpl<$Res>
    implements _$DiaryCopyWith<$Res> {
  __$DiaryCopyWithImpl(_Diary _value, $Res Function(_Diary) _then)
      : super(_value, (v) => _then(v as _Diary));

  @override
  _Diary get _value => super._value as _Diary;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? week = freezed,
    Object? isToday = freezed,
  }) {
    return _then(_Diary(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      isToday: isToday == freezed
          ? _value.isToday
          : isToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Diary implements _Diary {
  const _$_Diary(
      {required this.title,
      required this.date,
      required this.week,
      required this.isToday});

  @override
  final String title;
  @override
  final int date;
  @override
  final String week;
  @override
  final bool isToday;

  @override
  String toString() {
    return 'Diary(title: $title, date: $date, week: $week, isToday: $isToday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Diary &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.isToday, isToday) ||
                const DeepCollectionEquality().equals(other.isToday, isToday)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(isToday);

  @JsonKey(ignore: true)
  @override
  _$DiaryCopyWith<_Diary> get copyWith =>
      __$DiaryCopyWithImpl<_Diary>(this, _$identity);
}

abstract class _Diary implements Diary {
  const factory _Diary(
      {required String title,
      required int date,
      required String week,
      required bool isToday}) = _$_Diary;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get date => throw _privateConstructorUsedError;
  @override
  String get week => throw _privateConstructorUsedError;
  @override
  bool get isToday => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryCopyWith<_Diary> get copyWith => throw _privateConstructorUsedError;
}
