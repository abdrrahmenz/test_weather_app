import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/models.dart';

import 'location_model.dart';
part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = LocationStateInitial;
  const factory LocationState.loading() = LocationStateLoading;
  const factory LocationState.loaded(List<LocationModel> data) = LocationStateLoaded;
  const factory LocationState.error(String message) = LocationStateError;
}