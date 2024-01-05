part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({required UserHomeResModel response}) =
      _Success;
  const factory HomeState.failed({required String error}) = _Failed;
}
