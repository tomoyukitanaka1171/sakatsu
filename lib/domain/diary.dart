import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary.freezed.dart';

@freezed
class Diary with _$Diary {
  const factory Diary({
    required String title,
    required int date,
    required String week,
    required bool isToday,
  }) = _Diary;
}
