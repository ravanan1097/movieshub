import 'package:json_annotation/json_annotation.dart';
import "images.dart";
part 'entries.g.dart';

@JsonSerializable()
class Entries {
    Entries();

    String title;
    String description;
    String programType;
    Images images;
    num releaseYear;
    
    factory Entries.fromJson(Map<String,dynamic> json) => _$EntriesFromJson(json);
    Map<String, dynamic> toJson() => _$EntriesToJson(this);
}
