part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.userRegisterSuccess(
      {required UserSignUpRes response}) = _UserRegisterSuccess;
  const factory UserState.userRegisterFail({required String error}) =
      _UserRegisterFail;
  const factory UserState.userRegisterOtpSuccess(
      {required OtpUserRes response}) = _UserRegisterOtpSuccess;
  const factory UserState.userRegisterOtpFail({required String error}) =
      _UserRegisterOtpFail;
  const factory UserState.shouldShowOtp({required bool otp}) = _ShouldShowOtp;
}
