import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_by_category.freezed.dart';
part 'data_by_category.g.dart';

@freezed
class DataByCategory with _$DataByCategory {
  const factory DataByCategory({
    required String title,
    required String imageUrl,
  }) = _DataByCategory;

  factory DataByCategory.fromJson(Map<String, dynamic> json) =>
      _$DataByCategoryFromJson(json);
}
