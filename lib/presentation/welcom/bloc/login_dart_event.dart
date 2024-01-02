part of 'login_dart_bloc.dart';

@freezed
class LoginDartEvent with _$LoginDartEvent {
  const factory LoginDartEvent.started() = _Started;
  const factory LoginDartEvent.onLoginClicked(
      {required String email, required String password}) = _OnLoginClicked;
}
