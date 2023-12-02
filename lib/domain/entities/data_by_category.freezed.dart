// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataByCategory _$DataByCategoryFromJson(Map<String, dynamic> json) {
  return _DataByCategory.fromJson(json);
}

/// @nodoc
mixin _$DataByCategory {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataByCategoryCopyWith<DataByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataByCategoryCopyWith<$Res> {
  factory $DataByCategoryCopyWith(
          DataByCategory value, $Res Function(DataByCategory) then) =
      _$DataByCategoryCopyWithImpl<$Res, DataByCategory>;
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class _$DataByCategoryCopyWithImpl<$Res, $Val extends DataByCategory>
    implements $DataByCategoryCopyWith<$Res> {
  _$DataByCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$DataByCategoryImplCopyWith<$Res>
    implements $DataByCategoryCopyWith<$Res> {
  factory _$$DataByCategoryImplCopyWith(_$DataByCategoryImpl value,
          $Res Function(_$DataByCategoryImpl) then) =
      __$$DataByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class __$$DataByCategoryImplCopyWithImpl<$Res>
    extends _$DataByCategoryCopyWithImpl<$Res, _$DataByCategoryImpl>
    implements _$$DataByCategoryImplCopyWith<$Res> {
  __$$DataByCategoryImplCopyWithImpl(
      _$DataByCategoryImpl _value, $Res Function(_$DataByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$DataByCategoryImpl(
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
class _$DataByCategoryImpl implements _DataByCategory {
  const _$DataByCategoryImpl({required this.title, required this.imageUrl});

  factory _$DataByCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataByCategoryImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DataByCategory(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataByCategoryImpl &&
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
  _$$DataByCategoryImplCopyWith<_$DataByCategoryImpl> get copyWith =>
      __$$DataByCategoryImplCopyWithImpl<_$DataByCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataByCategoryImplToJson(
      this,
    );
  }
}

abstract class _DataByCategory implements DataByCategory {
  const factory _DataByCategory(
      {required final String title,
      required final String imageUrl}) = _$DataByCategoryImpl;

  factory _DataByCategory.fromJson(Map<String, dynamic> json) =
      _$DataByCategoryImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$DataByCategoryImplCopyWith<_$DataByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
