part of 'toptvshows_bloc.dart';

@freezed
class ToptvshowsEvent {
  const factory ToptvshowsEvent.intialize() = _Intialize;
  const factory ToptvshowsEvent.gettvshows() = _shows;
}
