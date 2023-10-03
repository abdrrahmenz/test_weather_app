import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.g.dart';
part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel {

  const factory LocationModel({
    required String id,
    required String propinsi,
    required String kota,
    required String kecamatan,
    required String lat,
    required String lon,
  })  = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>  _$LocationModelFromJson(json);
}