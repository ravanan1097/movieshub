// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageurl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Imageurl _$ImageurlFromJson(Map<String, dynamic> json) {
  return Imageurl()
    ..url = json['url'] as String
    ..width = json['width'] as num
    ..height = json['height'] as num;
}

Map<String, dynamic> _$ImageurlToJson(Imageurl instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height
    };
