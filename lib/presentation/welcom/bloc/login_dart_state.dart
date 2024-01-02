part of 'login_dart_bloc.dart';

@freezed
class LoginDartState with _$LoginDartState {
  const factory LoginDartState.initial() = _Initial;
  const factory LoginDartState.loading() = _Loading;
  const factory LoginDartState.loginSuccess() = _LoginSuccess;
  const factory LoginDartState.loginFail({required String error}) = _LoginFail;
}
