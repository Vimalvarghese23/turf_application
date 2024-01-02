import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_application/Widget/game_container.dart';
import 'package:turf_application/Widget/turf_container.dart';
import 'package:turf_application/presentation/turf_details/turf_details_page.dart';
import 'package:turf_application/presentation/favoraite/favoraite_page.dart';
import 'package:turf_application/presentation/order/order_page.dart';
import 'package:turf_application/presentation/profile/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Text('Home'),
    Text('Favorites'),
    Text('Orders'),
    Text('Profile'),
  ];
  void _onHomeTap() {
    print('Home tapped');
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
                'HOME',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: StatefulBuilder(
              builder: (context, setState) {
                return Row(
                  children: [
                    GameContainer(
                      name: 'Foot Ball',
                      imagePath: 'images/Vector(1).png',
                      onTap: () {
                        print('tapp basket');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/snooker.png',
                      name: 'Snooker',
                      onTap: () {
                        print('tapp snook');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/Vector(2).png',
                      name: 'Volly Ball',
                      onTap: () {
                        print('tapp volly');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/Vector(3).png',
                      name: 'Shooting',
                      onTap: () {
                        print('tapp shoot');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/Vector(4).png',
                      name: 'Golf',
                      onTap: () {
                        print('tapp golf');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/Vector(5).png',
                      name: 'Table Tennis',
                      onTap: () {
                        print('tapped table tennis');
                      },
                    ),
                    GameContainer(
                      imagePath: 'images/Vector(6).png',
                      name: 'Ice Skating',
                      onTap: () {
                        print('tappe Ice');
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 24.h),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TurfDetailsScreen()),
              );
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
