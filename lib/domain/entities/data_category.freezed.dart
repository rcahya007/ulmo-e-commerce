// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataCategory _$DataCategoryFromJson(Map<String, dynamic> json) {
  return _DataCategory.fromJson(json);
}

/// @nodoc
mixin _$DataCategory {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCategoryCopyWith<DataCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCategoryCopyWith<$Res> {
  factory $DataCategoryCopyWith(
          DataCategory value, $Res Function(DataCategory) then) =
      _$DataCategoryCopyWithImpl<$Res, DataCategory>;
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class _$DataCategoryCopyWithImpl<$Res, $Val extends DataCategory>
    implements $DataCategoryCopyWith<$Res> {
  _$DataCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataCategoryImplCopyWith<$Res>
    implements $DataCategoryCopyWith<$Res> {
  factory _$$DataCategoryImplCopyWith(
          _$DataCategoryImpl value, $Res Function(_$DataCategoryImpl) then) =
      __$$DataCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class __$$DataCategoryImplCopyWithImpl<$Res>
    extends _$DataCategoryCopyWithImpl<$Res, _$DataCategoryImpl>
    implements _$$DataCategoryImplCopyWith<$Res> {
  __$$DataCategoryImplCopyWithImpl(
      _$DataCategoryImpl _value, $Res Function(_$DataCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$DataCategoryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCategoryImpl implements _DataCategory {
  const _$DataCategoryImpl({required this.title, required this.imageUrl});

  factory _$DataCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCategoryImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DataCategory(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCategoryImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCategoryImplCopyWith<_$DataCategoryImpl> get copyWith =>
      __$$DataCategoryImplCopyWithImpl<_$DataCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCategoryImplToJson(
      this,
    );
  }
}

abstract class _DataCategory implements DataCategory {
  const factory _DataCategory(
      {required final String title,
      required final String imageUrl}) = _$DataCategoryImpl;

  factory _DataCategory.fromJson(Map<String, dynamic> json) =
      _$DataCategoryImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$DataCategoryImplCopyWith<_$DataCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
