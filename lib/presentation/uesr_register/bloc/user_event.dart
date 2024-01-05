part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.onRegisterCliked({
    required String email,
    required String password,
    required dynamic mobileNumber,
    required String name,
    required String avathar,
  }) = _OnRegisterCliked;
  const factory UserEvent.onRegisterOtpCliked({
    required String name,
    required dynamic mobileNumber,
    required String email,
    required String password,
    required String otp,
    required String avathar,
  }) = _OnRegisterOtpCliked;

  const factory UserEvent.onClikedOtp() = _OnClikedOtp;
}
