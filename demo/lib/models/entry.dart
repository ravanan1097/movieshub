

import 'package:demo/models/index.dart';
import 'package:json_annotation/json_annotation.dart';
import "entries.dart";
part 'entry.g.dart';

@JsonSerializable()
class Entry {
    Entry();

    List<Entries> entry;
    
    factory Entry.fromJson(Map<String,dynamic> json) => _$EntryFromJson(json);
    Map<String, dynamic> toJson() => _$EntryToJson(this);
}
