// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      price: json['price'] as int,
      liked: json['liked'] as bool,
      newProduct: json['newProduct'] as bool,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'liked': instance.liked,
      'newProduct': instance.newProduct,
    };
