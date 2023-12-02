// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataStory _$DataStoryFromJson(Map<String, dynamic> json) {
  return _DataStroy.fromJson(json);
}

/// @nodoc
mixin _$DataStory {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStoryCopyWith<DataStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStoryCopyWith<$Res> {
  factory $DataStoryCopyWith(DataStory value, $Res Function(DataStory) then) =
      _$DataStoryCopyWithImpl<$Res, DataStory>;
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class _$DataStoryCopyWithImpl<$Res, $Val extends DataStory>
    implements $DataStoryCopyWith<$Res> {
  _$DataStoryCopyWithImpl(this._value, this._then);

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
abstract class _$$DataStroyImplCopyWith<$Res>
    implements $DataStoryCopyWith<$Res> {
  factory _$$DataStroyImplCopyWith(
          _$DataStroyImpl value, $Res Function(_$DataStroyImpl) then) =
      __$$DataStroyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageUrl});
}

/// @nodoc
class __$$DataStroyImplCopyWithImpl<$Res>
    extends _$DataStoryCopyWithImpl<$Res, _$DataStroyImpl>
    implements _$$DataStroyImplCopyWith<$Res> {
  __$$DataStroyImplCopyWithImpl(
      _$DataStroyImpl _value, $Res Function(_$DataStroyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$DataStroyImpl(
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
class _$DataStroyImpl implements _DataStroy {
  const _$DataStroyImpl({required this.title, required this.imageUrl});

  factory _$DataStroyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataStroyImplFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DataStory(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStroyImpl &&
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
  _$$DataStroyImplCopyWith<_$DataStroyImpl> get copyWith =>
      __$$DataStroyImplCopyWithImpl<_$DataStroyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataStroyImplToJson(
      this,
    );
  }
}

abstract class _DataStroy implements DataStory {
  const factory _DataStroy(
      {required final String title,
      required final String imageUrl}) = _$DataStroyImpl;

  factory _DataStroy.fromJson(Map<String, dynamic> json) =
      _$DataStroyImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$DataStroyImplCopyWith<_$DataStroyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
