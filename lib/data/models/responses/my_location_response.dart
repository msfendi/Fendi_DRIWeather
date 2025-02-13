import 'dart:convert';

class MyLocationResponse {
  final int placeId;
  final String licence;
  final String osmType;
  final int osmId;
  final String lat;
  final String lon;
  final String displayName;
  final Address address;
  final List<String> boundingbox;

  MyLocationResponse({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.lat,
    required this.lon,
    required this.displayName,
    required this.address,
    required this.boundingbox,
  });

  factory MyLocationResponse.fromJson(String str) =>
      MyLocationResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MyLocationResponse.fromMap(Map<String, dynamic> json) =>
      MyLocationResponse(
        placeId: json["place_id"],
        licence: json["licence"],
        osmType: json["osm_type"],
        osmId: json["osm_id"],
        lat: json["lat"],
        lon: json["lon"],
        displayName: json["display_name"],
        address: Address.fromMap(json["address"]),
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "place_id": placeId,
        "licence": licence,
        "osm_type": osmType,
        "osm_id": osmId,
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "address": address.toMap(),
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
      };
}

class Address {
  final String tourism;
  final String road;
  final String village;
  final String city;
  final String state;
  final String iso31662Lvl4;
  final String region;
  final String iso31662Lvl3;
  final String postcode;
  final String country;
  final String countryCode;

  Address({
    required this.tourism,
    required this.road,
    required this.village,
    required this.city,
    required this.state,
    required this.iso31662Lvl4,
    required this.region,
    required this.iso31662Lvl3,
    required this.postcode,
    required this.country,
    required this.countryCode,
  });

  factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Address.fromMap(Map<String, dynamic> json) => Address(
        tourism: json["tourism"],
        road: json["road"],
        village: json["village"],
        city: json["city"],
        state: json["state"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        region: json["region"],
        iso31662Lvl3: json["ISO3166-2-lvl3"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toMap() => {
        "tourism": tourism,
        "road": road,
        "village": village,
        "city": city,
        "state": state,
        "ISO3166-2-lvl4": iso31662Lvl4,
        "region": region,
        "ISO3166-2-lvl3": iso31662Lvl3,
        "postcode": postcode,
        "country": country,
        "country_code": countryCode,
      };
}
