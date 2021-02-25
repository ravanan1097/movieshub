// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entries _$EntriesFromJson(Map<String, dynamic> json) {
  return Entries()
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..programType = json['programType'] as String
    ..images = json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>)
    ..releaseYear = json['releaseYear'] as num;
}

Map<String, dynamic> _$EntriesToJson(Entries instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'programType': instance.programType,
      'images': instance.images,
      'releaseYear': instance.releaseYear
    };
