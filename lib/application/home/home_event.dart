part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.intialize() = _Intialize;
  const factory HomeEvent.getdrama() = _GetDrama;
}
