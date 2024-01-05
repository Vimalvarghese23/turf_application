import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:turf_application/Widget/turf_container.dart';
import 'package:turf_application/presentation/home_screen/bloc/home_bloc.dart';

import 'package:turf_application/presentation/order/order_page.dart';
import 'package:turf_application/presentation/profile/profile_page.dart';

class FavoraiteScreen extends StatefulWidget {
  const FavoraiteScreen({super.key});

  @override
  State<FavoraiteScreen> createState() => _FavoraiteScreenState();
}

class _FavoraiteScreenState extends State<FavoraiteScreen> {
  int _currentIndex = 1;
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
    print('Favorite tapped');
  }

  void _onOrdersTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderScreen()),
    );
  }

  void _onProfileTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

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
                'FAVORITES',
                style: TextStyle(
                  color: Color(0xFF494949),
                  fontSize: 20.sp,
                  fontFamily: 'Fira Sans Extra Condensed',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 38.h),
          Row(
            children: [
              SizedBox(
                height: 47.h,
                width: 265.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12).r,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5).r,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.0).r,
                    child: TextField(
                      onTap: () {
                        print('Text field tapped');
                      },
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 13.sp,
                          fontFamily: 'Fira Sans',
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.grey.shade800,
                          onPressed: () {
                            print('Search icon tapped');
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 73.88.h),
              Padding(
                padding: const EdgeInsets.only(right: 14, left: 30.49).r,
                child: Container(
                  width: 45.w,
                  height: 47.h,
                  decoration: ShapeDecoration(
                    color: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 32.w, height: 32.h),
                      ),
                      Positioned(
                        left: 1,
                        top: 1,
                        right: 2,
                        bottom: 1,
                        child: IconButton(
                          icon: Icon(Icons.filter_alt_outlined),
                          color: Colors.grey.shade800,
                          onPressed: () {
                            print('filter icon tapped');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 26.h),
          TurfContainer(
            imagePath: 'images/tt.jpeg',
            name: 'ABC Soccer Club\nKakkanad',
            text1: 'kakkanad infopark \ncampus',
            text2:
                'Lorem ipsum dolor sit amet consectetur. Consequat fames pellentesque elementum.',
            text3: 'Mon - sun 4am - 12am',
            onTap: () {
              print('tapp ABC');
            },
          ),
          SizedBox(height: 11.h),
          TurfContainer(
              imagePath: 'images/ss.jpeg',
              name: 'Football mania \nKakkanad',
              text1: 'kakkanad infopark \ncampus',
              text2:
                  'Lorem ipsum dolor sit amet consectetur. Consequat fames pellentesque elementum.',
              text3: 'Mon - sun 4am - 12am',
              onTap: () {
                print('tapp mania');
              }),
          SizedBox(height: 80.h),
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
