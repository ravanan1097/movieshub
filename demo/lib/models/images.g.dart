// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images()
    ..poster = json['Poster Art'] == null
        ? null
        : Imageurl.fromJson(json['Poster Art'] as Map<String, dynamic>);
    
}

Map<String, dynamic> _$ImagesToJson(Images instance) =>
    <String, dynamic>{'Poster Art': instance.poster };
