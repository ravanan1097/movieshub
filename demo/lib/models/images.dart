import 'package:json_annotation/json_annotation.dart';
import "imageurl.dart";
part 'images.g.dart';

@JsonSerializable()
class Images {
    Images();

    Imageurl poster;
    
    factory Images.fromJson(Map<String,dynamic> json) => _$ImagesFromJson(json);
    Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
