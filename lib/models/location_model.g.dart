// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      id: json['id'] as String,
      propinsi: json['propinsi'] as String,
      kota: json['kota'] as String,
      kecamatan: json['kecamatan'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propinsi': instance.propinsi,
      'kota': instance.kota,
      'kecamatan': instance.kecamatan,
      'lat': instance.lat,
      'lon': instance.lon,
    };
