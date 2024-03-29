part of '../uesr_register/bloc/user_bloc.dart';

class OtpPage extends StatefulWidget {
  final String name;
  final String mobileNumber;
  final String email;
  final String password;
  OtpPage(
      {super.key,
      required this.name,
      required this.mobileNumber,
      required this.email,
      required this.password,
      required String avathar});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  bool _obscureText = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  String? getOtp;
  late ProgressDialog progressDialog;

  @override
  void initState() {
    super.initState();
    progressDialog = ProgressDialog(context: context);
  }

  @override
  Widget build(BuildContext context) {
    bool shouldShowOtp = false;
    bool isOtpNotVerified = true;
    String? otpVlaue;
    print(shouldShowOtp);
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocListener<UserBloc, UserState>(
          listener: _registerListener,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 30).r,
                    child: Container(
                      height: 40.h,
                      width: 150.w,
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 25.sp,
                          fontFamily: 'Fira Sans Extra Condensed',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25).r,
                    child: Container(
                        height: 17.h,
                        width: 150.w,
                        child: Text(
                          'Choose Avatar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Fira Sans Condensed',
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15).w,
                      child: UserOwnerAvathar(
                        imagePath: 'images/boy1 1.png',
                      ),
                    ),
                    UserOwnerAvathar(
                      imagePath: 'images/girl1 1.png',
                    ),
                    UserOwnerAvathar(
                      imagePath: 'images/boy2 1.png',
                    ),
                    UserOwnerAvathar(
                      imagePath: 'images/girl2 1.png',
                    ),
                    UserOwnerAvathar(
                      imagePath: 'images/avathar2.png',
                    ),
                    UserOwnerAvathar(
                      imagePath: 'images/avathar1.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(height: 25.h),
              MyTextWidget(
                mytext: 'Name',
                format: FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
                controller: _nameController,
              ),
              SizedBox(height: 21.h),
              MyTextWidget(
                mytext: 'Mobile number',
                format: FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                controller: _mobileNumberController,
              ),
              SizedBox(height: 21.h),
              MyTextWidget(
                mytext: 'Email',
                format:
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9@.]")),
                controller: _emailController,
              ),
              SizedBox(height: 21.h),
              SizedBox(
                height: 59.h,
                width: 356.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 18).r,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Fira Sans Condensed',
                      fontWeight: FontWeight.w500,
                    ),
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10).w,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17).r,
                    child: Text(
                      'OTP VERIFICATION',
                      style: TextStyle(
                        color: Color(0xFF020202),
                        fontSize: 25.sp,
                        fontFamily: 'Fira Sans Extra Condensed',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17).r,
                    child: OtpTextField(
                      textStyle: TextStyle(color: Colors.black),
                      numberOfFields: 6,
                      borderColor: Color(0xFF512DA8),
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {
                        print(code);
                      },
                      onSubmit: (String verificationCode) {
                        setState(() {
                          getOtp = verificationCode;
                        });
                        print(verificationCode);
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  OtpTimerButton(
                      duration: 30,
                      onPressed: () {
                        print('refres tapped');
                      })
                ],
              ),
              SizedBox(height: 100.h),
              BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                bool shouldShowOtp = showOtp(context, state);
                print(shouldShowOtp);
                return Visibility(
                  visible: true,
                  child: SizedBox(
                    height: 59.h,
                    width: 356.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 18).r,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10).w),
                              backgroundColor: Color(0xFF3792C4),
                              foregroundColor: Colors.white),
                          onPressed: () {
                            context.read<UserBloc>().add(
                                  _OnRegisterOtpCliked(
                                    name: _nameController.text,
                                    mobileNumber: _mobileNumberController.text,
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    otp: getOtp ?? "",
                                    avathar: 'utiiyo',
                                  ),
                                );
                            print("otpvalue");
                            print(getOtp);
                          },
                          child: Text(
                            'REGISTER NOW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'Fira Sans Condensed',
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ),
                );
              }),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  void updatePasswordText() {
    if (_obscureText) {
      _passwordController.text =
          '*'.padRight(_passwordController.text.length, '*');
    }
  }

  void _registerListener(BuildContext ctx, UserState state) {
    if (state is _Loading) {
      progressDialog.show(msg: "Registering");
    } else {
      if (state is _UserRegisterOtpSuccess) {
        progressDialog.close();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(const SnackBar(content: Text("success")));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Provider(
              create: (ctx) => LoginDartBloc(),
              child: MyHome(),
            ),
          ),
        );
      } else if (state is _UserRegisterOtpFail) {
        progressDialog.close();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(state.error)));
      }
    }
  }

  bool showOtp(BuildContext ctx, UserState state) {
    if (state is _ShouldShowOtp) {
      return state.otp;
    } else if (state is _UserRegisterSuccess) {
      return true;
    }
    return false;
  }
}
