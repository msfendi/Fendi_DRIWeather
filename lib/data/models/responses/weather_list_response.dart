import 'dart:convert';

class WeatherListResponse {
  final Timelines? timelines;
  final Location? location;

  WeatherListResponse({
    this.timelines,
    this.location,
  });

  factory WeatherListResponse.fromJson(String str) =>
      WeatherListResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WeatherListResponse.fromMap(Map<String, dynamic> json) =>
      WeatherListResponse(
        timelines: json["timelines"] == null
            ? null
            : Timelines.fromMap(json["timelines"]),
        location: json["location"] == null
            ? null
            : Location.fromMap(json["location"]),
      );

  Map<String, dynamic> toMap() => {
        "timelines": timelines?.toMap(),
        "location": location?.toMap(),
      };
}

class Location {
  final double? lat;
  final double? lon;

  Location({
    this.lat,
    this.lon,
  });

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "lat": lat,
        "lon": lon,
      };
}

class Timelines {
  final List<Minutely>? minutely;
  final List<Hourly>? hourly;
  final List<Daily>? daily;

  Timelines({
    this.minutely,
    this.hourly,
    this.daily,
  });

  factory Timelines.fromJson(String str) => Timelines.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Timelines.fromMap(Map<String, dynamic> json) => Timelines(
        minutely: json["minutely"] == null
            ? []
            : List<Minutely>.from(
                json["minutely"]!.map((x) => Minutely.fromMap(x))),
        hourly: json["hourly"] == null
            ? []
            : List<Hourly>.from(json["hourly"]!.map((x) => Hourly.fromMap(x))),
        daily: json["daily"] == null
            ? []
            : List<Daily>.from(json["daily"]!.map((x) => Daily.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "minutely": minutely == null
            ? []
            : List<dynamic>.from(minutely!.map((x) => x.toMap())),
        "hourly": hourly == null
            ? []
            : List<dynamic>.from(hourly!.map((x) => x.toMap())),
        "daily": daily == null
            ? []
            : List<dynamic>.from(daily!.map((x) => x.toMap())),
      };
}

class Daily {
  final DateTime? time;
  final Values? values;

  Daily({
    this.time,
    this.values,
  });

  factory Daily.fromJson(String str) => Daily.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Daily.fromMap(Map<String, dynamic> json) => Daily(
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        values: json["values"] == null ? null : Values.fromMap(json["values"]),
      );

  Map<String, dynamic> toMap() => {
        "time": time?.toIso8601String(),
        "values": values?.toMap(),
      };
}

class Values {
  final double? cloudBaseAvg;
  final double? cloudBaseMax;
  final double? cloudBaseMin;
  final double? cloudCeilingAvg;
  final double? cloudCeilingMax;
  final double? cloudCeilingMin;
  final int? cloudCoverAvg;
  final int? cloudCoverMax;
  final int? cloudCoverMin;
  final double? dewPointAvg;
  final double? dewPointMax;
  final double? dewPointMin;
  final double? evapotranspirationAvg;
  final double? evapotranspirationMax;
  final double? evapotranspirationMin;
  final double? evapotranspirationSum;
  final double? freezingRainIntensityAvg;
  final double? freezingRainIntensityMax;
  final int? freezingRainIntensityMin;
  final double? hailProbabilityAvg;
  final double? hailProbabilityMax;
  final double? hailProbabilityMin;
  final double? hailSizeAvg;
  final double? hailSizeMax;
  final double? hailSizeMin;
  final int? humidityAvg;
  final int? humidityMax;
  final int? humidityMin;
  final int? iceAccumulationAvg;
  final double? iceAccumulationLweAvg;
  final double? iceAccumulationLweMax;
  final int? iceAccumulationLweMin;
  final double? iceAccumulationLweSum;
  final int? iceAccumulationMax;
  final int? iceAccumulationMin;
  final int? iceAccumulationSum;
  final DateTime? moonriseTime;
  final DateTime? moonsetTime;
  final double? precipitationProbabilityAvg;
  final int? precipitationProbabilityMax;
  final int? precipitationProbabilityMin;
  final int? pressureSeaLevelAvg;
  final int? pressureSeaLevelMax;
  final int? pressureSeaLevelMin;
  final int? pressureSurfaceLevelAvg;
  final int? pressureSurfaceLevelMax;
  final int? pressureSurfaceLevelMin;
  final double? rainAccumulationAvg;
  final double? rainAccumulationLweAvg;
  final double? rainAccumulationLweMax;
  final int? rainAccumulationLweMin;
  final double? rainAccumulationMax;
  final int? rainAccumulationMin;
  final double? rainAccumulationSum;
  final double? rainIntensityAvg;
  final double? rainIntensityMax;
  final int? rainIntensityMin;
  final int? sleetAccumulationAvg;
  final int? sleetAccumulationLweAvg;
  final int? sleetAccumulationLweMax;
  final int? sleetAccumulationLweMin;
  final int? sleetAccumulationLweSum;
  final int? sleetAccumulationMax;
  final int? sleetAccumulationMin;
  final int? sleetIntensityAvg;
  final int? sleetIntensityMax;
  final int? sleetIntensityMin;
  final double? snowAccumulationAvg;
  final double? snowAccumulationLweAvg;
  final double? snowAccumulationLweMax;
  final int? snowAccumulationLweMin;
  final double? snowAccumulationLweSum;
  final double? snowAccumulationMax;
  final int? snowAccumulationMin;
  final double? snowAccumulationSum;
  final double? snowDepthAvg;
  final double? snowDepthMax;
  final double? snowDepthMin;
  final double? snowDepthSum;
  final double? snowIntensityAvg;
  final double? snowIntensityMax;
  final int? snowIntensityMin;
  final DateTime? sunriseTime;
  final DateTime? sunsetTime;
  final double? temperatureApparentAvg;
  final double? temperatureApparentMax;
  final double? temperatureApparentMin;
  final double? temperatureAvg;
  final double? temperatureMax;
  final double? temperatureMin;
  final int? uvHealthConcernAvg;
  final int? uvHealthConcernMax;
  final int? uvHealthConcernMin;
  final int? uvIndexAvg;
  final int? uvIndexMax;
  final int? uvIndexMin;
  final double? visibilityAvg;
  final int? visibilityMax;
  final double? visibilityMin;
  final int? weatherCodeMax;
  final int? weatherCodeMin;
  final int? windDirectionAvg;
  final double? windGustAvg;
  final double? windGustMax;
  final double? windGustMin;
  final double? windSpeedAvg;
  final double? windSpeedMax;
  final double? windSpeedMin;

  Values({
    this.cloudBaseAvg,
    this.cloudBaseMax,
    this.cloudBaseMin,
    this.cloudCeilingAvg,
    this.cloudCeilingMax,
    this.cloudCeilingMin,
    this.cloudCoverAvg,
    this.cloudCoverMax,
    this.cloudCoverMin,
    this.dewPointAvg,
    this.dewPointMax,
    this.dewPointMin,
    this.evapotranspirationAvg,
    this.evapotranspirationMax,
    this.evapotranspirationMin,
    this.evapotranspirationSum,
    this.freezingRainIntensityAvg,
    this.freezingRainIntensityMax,
    this.freezingRainIntensityMin,
    this.hailProbabilityAvg,
    this.hailProbabilityMax,
    this.hailProbabilityMin,
    this.hailSizeAvg,
    this.hailSizeMax,
    this.hailSizeMin,
    this.humidityAvg,
    this.humidityMax,
    this.humidityMin,
    this.iceAccumulationAvg,
    this.iceAccumulationLweAvg,
    this.iceAccumulationLweMax,
    this.iceAccumulationLweMin,
    this.iceAccumulationLweSum,
    this.iceAccumulationMax,
    this.iceAccumulationMin,
    this.iceAccumulationSum,
    this.moonriseTime,
    this.moonsetTime,
    this.precipitationProbabilityAvg,
    this.precipitationProbabilityMax,
    this.precipitationProbabilityMin,
    this.pressureSeaLevelAvg,
    this.pressureSeaLevelMax,
    this.pressureSeaLevelMin,
    this.pressureSurfaceLevelAvg,
    this.pressureSurfaceLevelMax,
    this.pressureSurfaceLevelMin,
    this.rainAccumulationAvg,
    this.rainAccumulationLweAvg,
    this.rainAccumulationLweMax,
    this.rainAccumulationLweMin,
    this.rainAccumulationMax,
    this.rainAccumulationMin,
    this.rainAccumulationSum,
    this.rainIntensityAvg,
    this.rainIntensityMax,
    this.rainIntensityMin,
    this.sleetAccumulationAvg,
    this.sleetAccumulationLweAvg,
    this.sleetAccumulationLweMax,
    this.sleetAccumulationLweMin,
    this.sleetAccumulationLweSum,
    this.sleetAccumulationMax,
    this.sleetAccumulationMin,
    this.sleetIntensityAvg,
    this.sleetIntensityMax,
    this.sleetIntensityMin,
    this.snowAccumulationAvg,
    this.snowAccumulationLweAvg,
    this.snowAccumulationLweMax,
    this.snowAccumulationLweMin,
    this.snowAccumulationLweSum,
    this.snowAccumulationMax,
    this.snowAccumulationMin,
    this.snowAccumulationSum,
    this.snowDepthAvg,
    this.snowDepthMax,
    this.snowDepthMin,
    this.snowDepthSum,
    this.snowIntensityAvg,
    this.snowIntensityMax,
    this.snowIntensityMin,
    this.sunriseTime,
    this.sunsetTime,
    this.temperatureApparentAvg,
    this.temperatureApparentMax,
    this.temperatureApparentMin,
    this.temperatureAvg,
    this.temperatureMax,
    this.temperatureMin,
    this.uvHealthConcernAvg,
    this.uvHealthConcernMax,
    this.uvHealthConcernMin,
    this.uvIndexAvg,
    this.uvIndexMax,
    this.uvIndexMin,
    this.visibilityAvg,
    this.visibilityMax,
    this.visibilityMin,
    this.weatherCodeMax,
    this.weatherCodeMin,
    this.windDirectionAvg,
    this.windGustAvg,
    this.windGustMax,
    this.windGustMin,
    this.windSpeedAvg,
    this.windSpeedMax,
    this.windSpeedMin,
  });

  factory Values.fromJson(String str) => Values.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Values.fromMap(Map<String, dynamic> json) => Values(
        cloudBaseAvg: json["cloudBaseAvg"]?.toDouble(),
        cloudBaseMax: json["cloudBaseMax"]?.toDouble(),
        cloudBaseMin: json["cloudBaseMin"]?.toDouble(),
        cloudCeilingAvg: json["cloudCeilingAvg"]?.toDouble(),
        cloudCeilingMax: json["cloudCeilingMax"]?.toDouble(),
        cloudCeilingMin: json["cloudCeilingMin"]?.toDouble(),
        cloudCoverAvg: json["cloudCoverAvg"],
        cloudCoverMax: json["cloudCoverMax"],
        cloudCoverMin: json["cloudCoverMin"],
        dewPointAvg: json["dewPointAvg"]?.toDouble(),
        dewPointMax: json["dewPointMax"]?.toDouble(),
        dewPointMin: json["dewPointMin"]?.toDouble(),
        evapotranspirationAvg: json["evapotranspirationAvg"]?.toDouble(),
        evapotranspirationMax: json["evapotranspirationMax"]?.toDouble(),
        evapotranspirationMin: json["evapotranspirationMin"]?.toDouble(),
        evapotranspirationSum: json["evapotranspirationSum"]?.toDouble(),
        freezingRainIntensityAvg: json["freezingRainIntensityAvg"]?.toDouble(),
        freezingRainIntensityMax: json["freezingRainIntensityMax"]?.toDouble(),
        freezingRainIntensityMin: json["freezingRainIntensityMin"],
        hailProbabilityAvg: json["hailProbabilityAvg"]?.toDouble(),
        hailProbabilityMax: json["hailProbabilityMax"]?.toDouble(),
        hailProbabilityMin: json["hailProbabilityMin"]?.toDouble(),
        hailSizeAvg: json["hailSizeAvg"]?.toDouble(),
        hailSizeMax: json["hailSizeMax"]?.toDouble(),
        hailSizeMin: json["hailSizeMin"]?.toDouble(),
        humidityAvg: json["humidityAvg"],
        humidityMax: json["humidityMax"],
        humidityMin: json["humidityMin"],
        iceAccumulationAvg: json["iceAccumulationAvg"],
        iceAccumulationLweAvg: json["iceAccumulationLweAvg"]?.toDouble(),
        iceAccumulationLweMax: json["iceAccumulationLweMax"]?.toDouble(),
        iceAccumulationLweMin: json["iceAccumulationLweMin"],
        iceAccumulationLweSum: json["iceAccumulationLweSum"]?.toDouble(),
        iceAccumulationMax: json["iceAccumulationMax"],
        iceAccumulationMin: json["iceAccumulationMin"],
        iceAccumulationSum: json["iceAccumulationSum"],
        moonriseTime: json["moonriseTime"] == null
            ? null
            : DateTime.parse(json["moonriseTime"]),
        moonsetTime: json["moonsetTime"] == null
            ? null
            : DateTime.parse(json["moonsetTime"]),
        precipitationProbabilityAvg:
            json["precipitationProbabilityAvg"]?.toDouble(),
        precipitationProbabilityMax: json["precipitationProbabilityMax"],
        precipitationProbabilityMin: json["precipitationProbabilityMin"],
        pressureSeaLevelAvg: json["pressureSeaLevelAvg"],
        pressureSeaLevelMax: json["pressureSeaLevelMax"],
        pressureSeaLevelMin: json["pressureSeaLevelMin"],
        pressureSurfaceLevelAvg: json["pressureSurfaceLevelAvg"],
        pressureSurfaceLevelMax: json["pressureSurfaceLevelMax"],
        pressureSurfaceLevelMin: json["pressureSurfaceLevelMin"],
        rainAccumulationAvg: json["rainAccumulationAvg"]?.toDouble(),
        rainAccumulationLweAvg: json["rainAccumulationLweAvg"]?.toDouble(),
        rainAccumulationLweMax: json["rainAccumulationLweMax"]?.toDouble(),
        rainAccumulationLweMin: json["rainAccumulationLweMin"],
        rainAccumulationMax: json["rainAccumulationMax"]?.toDouble(),
        rainAccumulationMin: json["rainAccumulationMin"],
        rainAccumulationSum: json["rainAccumulationSum"]?.toDouble(),
        rainIntensityAvg: json["rainIntensityAvg"]?.toDouble(),
        rainIntensityMax: json["rainIntensityMax"]?.toDouble(),
        rainIntensityMin: json["rainIntensityMin"],
        sleetAccumulationAvg: json["sleetAccumulationAvg"],
        sleetAccumulationLweAvg: json["sleetAccumulationLweAvg"],
        sleetAccumulationLweMax: json["sleetAccumulationLweMax"],
        sleetAccumulationLweMin: json["sleetAccumulationLweMin"],
        sleetAccumulationLweSum: json["sleetAccumulationLweSum"],
        sleetAccumulationMax: json["sleetAccumulationMax"],
        sleetAccumulationMin: json["sleetAccumulationMin"],
        sleetIntensityAvg: json["sleetIntensityAvg"],
        sleetIntensityMax: json["sleetIntensityMax"],
        sleetIntensityMin: json["sleetIntensityMin"],
        snowAccumulationAvg: json["snowAccumulationAvg"]?.toDouble(),
        snowAccumulationLweAvg: json["snowAccumulationLweAvg"]?.toDouble(),
        snowAccumulationLweMax: json["snowAccumulationLweMax"]?.toDouble(),
        snowAccumulationLweMin: json["snowAccumulationLweMin"],
        snowAccumulationLweSum: json["snowAccumulationLweSum"]?.toDouble(),
        snowAccumulationMax: json["snowAccumulationMax"]?.toDouble(),
        snowAccumulationMin: json["snowAccumulationMin"],
        snowAccumulationSum: json["snowAccumulationSum"]?.toDouble(),
        snowDepthAvg: json["snowDepthAvg"]?.toDouble(),
        snowDepthMax: json["snowDepthMax"]?.toDouble(),
        snowDepthMin: json["snowDepthMin"]?.toDouble(),
        snowDepthSum: json["snowDepthSum"]?.toDouble(),
        snowIntensityAvg: json["snowIntensityAvg"]?.toDouble(),
        snowIntensityMax: json["snowIntensityMax"]?.toDouble(),
        snowIntensityMin: json["snowIntensityMin"],
        sunriseTime: json["sunriseTime"] == null
            ? null
            : DateTime.parse(json["sunriseTime"]),
        sunsetTime: json["sunsetTime"] == null
            ? null
            : DateTime.parse(json["sunsetTime"]),
        temperatureApparentAvg: json["temperatureApparentAvg"]?.toDouble(),
        temperatureApparentMax: json["temperatureApparentMax"]?.toDouble(),
        temperatureApparentMin: json["temperatureApparentMin"]?.toDouble(),
        temperatureAvg: json["temperatureAvg"]?.toDouble(),
        temperatureMax: json["temperatureMax"]?.toDouble(),
        temperatureMin: json["temperatureMin"]?.toDouble(),
        uvHealthConcernAvg: json["uvHealthConcernAvg"],
        uvHealthConcernMax: json["uvHealthConcernMax"],
        uvHealthConcernMin: json["uvHealthConcernMin"],
        uvIndexAvg: json["uvIndexAvg"],
        uvIndexMax: json["uvIndexMax"],
        uvIndexMin: json["uvIndexMin"],
        visibilityAvg: json["visibilityAvg"]?.toDouble(),
        visibilityMax: json["visibilityMax"],
        visibilityMin: json["visibilityMin"]?.toDouble(),
        weatherCodeMax: json["weatherCodeMax"],
        weatherCodeMin: json["weatherCodeMin"],
        windDirectionAvg: json["windDirectionAvg"],
        windGustAvg: json["windGustAvg"]?.toDouble(),
        windGustMax: json["windGustMax"]?.toDouble(),
        windGustMin: json["windGustMin"]?.toDouble(),
        windSpeedAvg: json["windSpeedAvg"]?.toDouble(),
        windSpeedMax: json["windSpeedMax"]?.toDouble(),
        windSpeedMin: json["windSpeedMin"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "cloudBaseAvg": cloudBaseAvg,
        "cloudBaseMax": cloudBaseMax,
        "cloudBaseMin": cloudBaseMin,
        "cloudCeilingAvg": cloudCeilingAvg,
        "cloudCeilingMax": cloudCeilingMax,
        "cloudCeilingMin": cloudCeilingMin,
        "cloudCoverAvg": cloudCoverAvg,
        "cloudCoverMax": cloudCoverMax,
        "cloudCoverMin": cloudCoverMin,
        "dewPointAvg": dewPointAvg,
        "dewPointMax": dewPointMax,
        "dewPointMin": dewPointMin,
        "evapotranspirationAvg": evapotranspirationAvg,
        "evapotranspirationMax": evapotranspirationMax,
        "evapotranspirationMin": evapotranspirationMin,
        "evapotranspirationSum": evapotranspirationSum,
        "freezingRainIntensityAvg": freezingRainIntensityAvg,
        "freezingRainIntensityMax": freezingRainIntensityMax,
        "freezingRainIntensityMin": freezingRainIntensityMin,
        "hailProbabilityAvg": hailProbabilityAvg,
        "hailProbabilityMax": hailProbabilityMax,
        "hailProbabilityMin": hailProbabilityMin,
        "hailSizeAvg": hailSizeAvg,
        "hailSizeMax": hailSizeMax,
        "hailSizeMin": hailSizeMin,
        "humidityAvg": humidityAvg,
        "humidityMax": humidityMax,
        "humidityMin": humidityMin,
        "iceAccumulationAvg": iceAccumulationAvg,
        "iceAccumulationLweAvg": iceAccumulationLweAvg,
        "iceAccumulationLweMax": iceAccumulationLweMax,
        "iceAccumulationLweMin": iceAccumulationLweMin,
        "iceAccumulationLweSum": iceAccumulationLweSum,
        "iceAccumulationMax": iceAccumulationMax,
        "iceAccumulationMin": iceAccumulationMin,
        "iceAccumulationSum": iceAccumulationSum,
        "moonriseTime": moonriseTime?.toIso8601String(),
        "moonsetTime": moonsetTime?.toIso8601String(),
        "precipitationProbabilityAvg": precipitationProbabilityAvg,
        "precipitationProbabilityMax": precipitationProbabilityMax,
        "precipitationProbabilityMin": precipitationProbabilityMin,
        "pressureSeaLevelAvg": pressureSeaLevelAvg,
        "pressureSeaLevelMax": pressureSeaLevelMax,
        "pressureSeaLevelMin": pressureSeaLevelMin,
        "pressureSurfaceLevelAvg": pressureSurfaceLevelAvg,
        "pressureSurfaceLevelMax": pressureSurfaceLevelMax,
        "pressureSurfaceLevelMin": pressureSurfaceLevelMin,
        "rainAccumulationAvg": rainAccumulationAvg,
        "rainAccumulationLweAvg": rainAccumulationLweAvg,
        "rainAccumulationLweMax": rainAccumulationLweMax,
        "rainAccumulationLweMin": rainAccumulationLweMin,
        "rainAccumulationMax": rainAccumulationMax,
        "rainAccumulationMin": rainAccumulationMin,
        "rainAccumulationSum": rainAccumulationSum,
        "rainIntensityAvg": rainIntensityAvg,
        "rainIntensityMax": rainIntensityMax,
        "rainIntensityMin": rainIntensityMin,
        "sleetAccumulationAvg": sleetAccumulationAvg,
        "sleetAccumulationLweAvg": sleetAccumulationLweAvg,
        "sleetAccumulationLweMax": sleetAccumulationLweMax,
        "sleetAccumulationLweMin": sleetAccumulationLweMin,
        "sleetAccumulationLweSum": sleetAccumulationLweSum,
        "sleetAccumulationMax": sleetAccumulationMax,
        "sleetAccumulationMin": sleetAccumulationMin,
        "sleetIntensityAvg": sleetIntensityAvg,
        "sleetIntensityMax": sleetIntensityMax,
        "sleetIntensityMin": sleetIntensityMin,
        "snowAccumulationAvg": snowAccumulationAvg,
        "snowAccumulationLweAvg": snowAccumulationLweAvg,
        "snowAccumulationLweMax": snowAccumulationLweMax,
        "snowAccumulationLweMin": snowAccumulationLweMin,
        "snowAccumulationLweSum": snowAccumulationLweSum,
        "snowAccumulationMax": snowAccumulationMax,
        "snowAccumulationMin": snowAccumulationMin,
        "snowAccumulationSum": snowAccumulationSum,
        "snowDepthAvg": snowDepthAvg,
        "snowDepthMax": snowDepthMax,
        "snowDepthMin": snowDepthMin,
        "snowDepthSum": snowDepthSum,
        "snowIntensityAvg": snowIntensityAvg,
        "snowIntensityMax": snowIntensityMax,
        "snowIntensityMin": snowIntensityMin,
        "sunriseTime": sunriseTime?.toIso8601String(),
        "sunsetTime": sunsetTime?.toIso8601String(),
        "temperatureApparentAvg": temperatureApparentAvg,
        "temperatureApparentMax": temperatureApparentMax,
        "temperatureApparentMin": temperatureApparentMin,
        "temperatureAvg": temperatureAvg,
        "temperatureMax": temperatureMax,
        "temperatureMin": temperatureMin,
        "uvHealthConcernAvg": uvHealthConcernAvg,
        "uvHealthConcernMax": uvHealthConcernMax,
        "uvHealthConcernMin": uvHealthConcernMin,
        "uvIndexAvg": uvIndexAvg,
        "uvIndexMax": uvIndexMax,
        "uvIndexMin": uvIndexMin,
        "visibilityAvg": visibilityAvg,
        "visibilityMax": visibilityMax,
        "visibilityMin": visibilityMin,
        "weatherCodeMax": weatherCodeMax,
        "weatherCodeMin": weatherCodeMin,
        "windDirectionAvg": windDirectionAvg,
        "windGustAvg": windGustAvg,
        "windGustMax": windGustMax,
        "windGustMin": windGustMin,
        "windSpeedAvg": windSpeedAvg,
        "windSpeedMax": windSpeedMax,
        "windSpeedMin": windSpeedMin,
      };
}

class Hourly {
  final DateTime? time;
  final Map<String, double?>? values;

  Hourly({
    this.time,
    this.values,
  });

  factory Hourly.fromJson(String str) => Hourly.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Hourly.fromMap(Map<String, dynamic> json) => Hourly(
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        values: Map.from(json["values"]!)
            .map((k, v) => MapEntry<String, double?>(k, v?.toDouble())),
      );

  Map<String, dynamic> toMap() => {
        "time": time?.toIso8601String(),
        "values":
            Map.from(values!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Minutely {
  final DateTime? time;
  final Map<String, double>? values;

  Minutely({
    this.time,
    this.values,
  });

  factory Minutely.fromJson(String str) => Minutely.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Minutely.fromMap(Map<String, dynamic> json) => Minutely(
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        values: Map.from(json["values"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
      );

  Map<String, dynamic> toMap() => {
        "time": time?.toIso8601String(),
        "values":
            Map.from(values!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
