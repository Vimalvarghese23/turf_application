import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_application/Widget/textfield.dart';
import 'package:turf_application/Widget/user_avathar.dart';

import 'package:turf_application/presentation/favoraite/favoraite_page.dart';
import 'package:turf_application/presentation/home_screen/bloc/home_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3;
  List<Widget> _pages = [
    Text('Home'),
    Text('Favorites'),
    Text('Orders'),
    Text('Profile'),
  ];
  void _onHomeTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _onFavoriteTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FavoraiteScreen()),
    );
  }

  void _onOrdersTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  void _onProfileTap() {
    print('Profile tapped');
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30.h),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12).r,
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(
                    'images/avathar1.png',
                  ),
                ),
              ),
              SizedBox(width: 38.w),
              Text(
                'PROFILE',
                style: TextStyle(
                  color: Color(0xFF494949),
                  fontSize: 20.sp,
                  fontFamily: 'Fira Sans Extra Condensed',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 39.h),
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
          SizedBox(height: 18.h),
          MyTextWidget(
            mytext: 'Name',
            format: FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
            controller: _nameController,
          ),
          SizedBox(height: 18.h),
          MyTextWidget(
            mytext: 'Mobile number',
            format: FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
            controller: _mobileNumberController,
          ),
          SizedBox(height: 18.h),
          MyTextWidget(
            mytext: 'Email',
            format: FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9@.]")),
            controller: _emailController,
          ),
          SizedBox(height: 18.h),
          SizedBox(
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
                    print('tappe update');
                  },
                  child: Text(
                    'UPDATE NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Fira Sans Condensed',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
          ),
          SizedBox(height: 18.h),
          GestureDetector(
            onTap: () {
              print('tapp change password');
            },
            child: Text(
              'CHANGE PASSWORD',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontFamily: 'Fira Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 100.h),
          Center(
            child: _pages[_currentIndex],
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              switch (index) {
                case 0:
                  _onHomeTap();
                  break;
                case 1:
                  _onFavoriteTap();
                  break;
                case 2:
                  _onOrdersTap();
                  break;
                case 3:
                  _onProfileTap();
                  break;
              }
            },
            selectedItemColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favoirate',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
