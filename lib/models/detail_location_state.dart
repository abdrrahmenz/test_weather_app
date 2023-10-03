import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/models.dart';

import 'detail_location_model.dart';
part 'detail_location_state.freezed.dart';

@freezed
class DetailLocationState with _$DetailLocationState {
  const factory DetailLocationState.initial() = DetailLocationStateInitial;
  const factory DetailLocationState.loading() = DetailLocationStateLoading;
  const factory DetailLocationState.loaded(List<DetailLocationModel> data) = DetailLocationStateLoaded;
  const factory DetailLocationState.error(String message) = DetailLocationStateError;
}