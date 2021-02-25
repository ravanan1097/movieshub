import 'package:json_annotation/json_annotation.dart';

part 'imageurl.g.dart';

@JsonSerializable()
class Imageurl {
    Imageurl();

    String url;
    num width;
    num height;
    
    factory Imageurl.fromJson(Map<String,dynamic> json) => _$ImageurlFromJson(json);
    Map<String, dynamic> toJson() => _$ImageurlToJson(this);
}
