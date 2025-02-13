import 'dart:convert';

class FindLocationResponse {
  final int? placeId;
  final String? licence;
  final String? osmType;
  final int? osmId;
  final List<String>? boundingbox;
  final String? lat;
  final String? lon;
  final String? displayName;
  final String? findLocationResponseClass;
  final String? type;
  final double? importance;

  FindLocationResponse({
    this.placeId,
    this.licence,
    this.osmType,
    this.osmId,
    this.boundingbox,
    this.lat,
    this.lon,
    this.displayName,
    this.findLocationResponseClass,
    this.type,
    this.importance,
  });

  // factory FindLocationResponse.fromJson(String str) =>
  //     FindLocationResponse.fromMap(json.decode(str));

  factory FindLocationResponse.fromJson(Map<String, dynamic> json) {
    return FindLocationResponse(
      placeId: json['place_id'],
      licence: json['licence'],
      osmType: json['osm_type'],
      osmId: json['osm_id'],
      boundingbox: List<String>.from(json['boundingbox']),
      lat: json['lat'],
      lon: json['lon'],
      displayName: json['display_name'],
      findLocationResponseClass: json["class"],
      type: json['type'],
      importance: json['importance'].toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory FindLocationResponse.fromMap(Map<String, dynamic> json) =>
      FindLocationResponse(
        placeId: json["place_id"],
        licence: json["licence"],
        osmType: json["osm_type"],
        osmId: json["osm_id"],
        boundingbox: json["boundingbox"] == null
            ? []
            : List<String>.from(json["boundingbox"]!.map((x) => x)),
        lat: json["lat"],
        lon: json["lon"],
        displayName: json["display_name"],
        findLocationResponseClass: json["class"],
        type: json["type"],
        importance: json["importance"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "place_id": placeId,
        "licence": licence,
        "osm_type": osmType,
        "osm_id": osmId,
        "boundingbox": boundingbox == null
            ? []
            : List<dynamic>.from(boundingbox!.map((x) => x)),
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "class": findLocationResponseClass,
        "type": type,
        "importance": importance,
      };
}
