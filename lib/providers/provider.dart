// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/repositories/repository.dart';
import 'package:intl/intl.dart';

class AppProvider extends ChangeNotifier {
  final Repository repository;

  AppProvider(this.repository);

  LocationState stateLocation = const LocationState.initial();
  DetailLocationState stateDetailLocation = const DetailLocationState.initial();

  List<LocationModel> locationList = [];
  List<DetailLocationModel> detailLocationList = [];
  LocationModel? selectedDropdownValue;
  DetailLocationModel? currentDetailLocationModel;

  String? currentAddress;
  Position? currentPosition;

  Future<bool> _handleLocationPermission(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      notifyListeners();
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        notifyListeners();
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      notifyListeners();
      return false;
    }
    notifyListeners();
    return true;
  }

  Future<void> getCurrentPosition(BuildContext context) async {
    final hasPermission = await _handleLocationPermission(context);

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      currentPosition = position;
      getAddressFromLatLng(currentPosition!);
      notifyListeners();
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            currentPosition!.latitude, currentPosition!.longitude)
        .then((List<Placemark> placeMarks) {
      Placemark place = placeMarks[0];
      currentAddress = place.subAdministrativeArea?.replaceAll(' Regency', '');
      fetchAllLocations();
      notifyListeners();
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> fetchAllLocations() async {
    try {
      stateLocation = const LocationState.loading();

      if (locationList.isNotEmpty) locationList.clear();

      notifyListeners();

      var result = await repository.fetchAllLocations();

      if (currentAddress != null) {
        var selectedLocation = result
            .firstWhere((element) => element.kota.contains(currentAddress!));
        onChangeDropdownValue(selectedLocation);
        fetchDetailLocations(selectedLocation.id);
      }

      locationList.addAll(result);
      stateLocation = LocationState.loaded(locationList);
      notifyListeners();
    } catch (e) {
      stateLocation = LocationState.error(e.toString());
      notifyListeners();
    }
  }

  void onChangeDropdownValue(LocationModel locationModel) {
    selectedDropdownValue = locationModel;
    fetchDetailLocations(locationModel.id);
    notifyListeners();
  }

  Future<void> fetchDetailLocations(String idLocation) async {
    try {
      stateDetailLocation = const DetailLocationState.loading();

      if (detailLocationList.isNotEmpty) detailLocationList.clear();

      notifyListeners();

      var result = await repository.fetchDetailLocations(idLocation);

      var currentHour = DateFormat('HHmm').format(DateTime.now().toLocal());

      var selectedDetail = result.firstWhere((element) =>
          int.parse(DateFormat('HHmm')
                  .format(DateTime.parse(element.jamCuaca).toLocal())) >=
              int.parse(currentHour) ||
          int.parse(DateFormat('HHmm')
                  .format(DateTime.parse(element.jamCuaca).toLocal())) <=
              int.parse(currentHour));

      currentDetailLocationModel = selectedDetail;

      detailLocationList.addAll(result);
      stateDetailLocation = DetailLocationState.loaded(detailLocationList);
      notifyListeners();
    } catch (e) {
      stateDetailLocation = DetailLocationState.error(e.toString());
      notifyListeners();
    }
  }
}
