class DetailLocationModel {
  String jamCuaca;
  String kodeCuaca;
  String cuaca;
  String humidity;
  String tempC;
  String tempF;

  DetailLocationModel({
    required this.jamCuaca,
    required this.kodeCuaca,
    required this.cuaca,
    required this.humidity,
    required this.tempC,
    required this.tempF,
  });

  factory DetailLocationModel.fromJson(Map<String, dynamic> json) => DetailLocationModel(
    jamCuaca: json["jamCuaca"],
    kodeCuaca: json["kodeCuaca"],
    cuaca: json["cuaca"],
    humidity: json["humidity"],
    tempC: json["tempC"],
    tempF: json["tempF"],
  );

  Map<String, dynamic> toJson() => {
    "jamCuaca": jamCuaca,
    "kodeCuaca": kodeCuaca,
    "cuaca": cuaca,
    "humidity": humidity,
    "tempC": tempC,
    "tempF": tempF,
  };
}