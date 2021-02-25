//unused file
class Jsontodart {
  int total;
  List<Entries> entries;

  Jsontodart({this.total, this.entries});

  Jsontodart.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['entries'] != null) {
      entries = new List<Entries>();
      json['entries'].forEach((v) {
        entries.add(new Entries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    if (this.entries != null) {
      data['entries'] = this.entries.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Entries {
  String title;
  String description;
  String programType;
  Images images;
  int releaseYear;

  Entries(
      {this.title,
      this.description,
      this.programType,
      this.images,
      this.releaseYear});

  Entries.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    programType = json['programType'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    releaseYear = json['releaseYear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['programType'] = this.programType;
    if (this.images != null) {
      data['images'] = this.images.toJson();
    }
    data['releaseYear'] = this.releaseYear;
    return data;
  }
}

class Images {
  PosterArt posterArt;

  Images({this.posterArt});

  Images.fromJson(Map<String, dynamic> json) {
    posterArt = json['Poster Art'] != null
        ? new PosterArt.fromJson(json['Poster Art'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posterArt != null) {
      data['Poster Art'] = this.posterArt.toJson();
    }
    return data;
  }
}

class PosterArt {
  String url;
  int width;
  int height;

  PosterArt({this.url, this.width, this.height});

  PosterArt.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
