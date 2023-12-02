import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_story.freezed.dart';
part 'data_story.g.dart';

@freezed
class DataStory with _$DataStory {
  const factory DataStory({
    required String title,
    required String imageUrl,
  }) = _DataStroy;

  factory DataStory.fromJson(Map<String, dynamic> json) =>
      DataStory.fromJson(json);
}
