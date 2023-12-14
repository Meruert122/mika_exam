// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
      deeplinkUrl: json['deeplinkUrl'] as String,
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'content': instance.content,
      'deeplinkUrl': instance.deeplinkUrl,
    };
