part of './bloc/user_bloc.dart';

class UserRegister extends StatefulWidget {
  UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  bool _obscureText = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  late ProgressDialog progressDialog;
  @override
  void initState() {
    super.initState();
    progressDialog = ProgressDialog(context: context);
  }

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 100.h),
              BlocBuilder<UserBloc, UserState>(builder: (context, state) {
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
                            // call the  event to get the OTP
                            // once OTP is recived , hide the send OTP button and enable the register button
                            // when regsiter is clicked call the API thats called below along with entered OTP
                            context.read<UserBloc>().add(
                                  _OnRegisterCliked(
                                    name: _nameController.text,
                                    mobileNumber: _mobileNumberController.text,
                                    password: _passwordController.text,
                                    email: _emailController.text,
                                    avathar: 'jnsdkjnd',
                                  ),
                                );
                          },
                          child: Text(
                            'SEND OTP',
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
      progressDialog.show(msg: "Otp send");
    } else {
      if (state is _UserRegisterSuccess) {
        progressDialog.close();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(const SnackBar(content: Text("success")));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Provider(
              create: (ctx) => UserBloc(),
              child: OtpPage(
                name: _nameController.text,
                mobileNumber: _mobileNumberController.text,
                password: _passwordController.text,
                email: _emailController.text,
                avathar: 'jnsdkjnd',
              ),
            ),
          ),
        );
      } else if (state is _UserRegisterFail) {
        progressDialog.close();
        ScaffoldMessenger.of(ctx)
            .showSnackBar(SnackBar(content: Text(state.error)));
      }
    }
  }
}
