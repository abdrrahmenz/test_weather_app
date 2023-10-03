import 'dart:convert';

import 'package:weather_app/models/models.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String baseUrl = "https://ibnux.github.io/BMKG-importer/cuaca/";

  Future<List<LocationModel>> fetchAllLocations() async {
    final url = Uri.parse('$baseUrl/wilayah.json');
    final response = await http.get(
      url,
    );
    var responseBody = json.decode(response.body);
    if (response.statusCode == 200) {
      return List<LocationModel>.from(
        responseBody.map(
              (x) => LocationModel.fromJson(x),
        ),
      );
    }
    return [];
  }

  Future<List<DetailLocationModel>> fetchDetailLocations(String idLocation) async {
    final url = Uri.parse('$baseUrl/$idLocation.json');
    final response = await http.get(
      url,
    );
    var responseBody = json.decode(response.body);
    if (response.statusCode == 200) {
      return List<DetailLocationModel>.from(
        responseBody.map(
              (x) => DetailLocationModel.fromJson(x),
        ),
      );
    }
    return [];
  }
}