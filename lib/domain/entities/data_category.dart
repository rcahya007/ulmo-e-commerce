import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_category.freezed.dart';
part 'data_category.g.dart';

@freezed
class DataCategory with _$DataCategory {
  const factory DataCategory({
    required String title,
    required String imageUrl,
  }) = _DataCategory;

  factory DataCategory.fromJson(Map<String, dynamic> json) =>
      DataCategory.fromJson(json);
}
