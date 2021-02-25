// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry()
    ..entry = (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Entries.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EntryToJson(Entry instance) =>
    <String, dynamic>{'entry': instance.entry};


