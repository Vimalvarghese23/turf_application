import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:turf_application/Widget/turf_facility.dart';
import 'package:turf_application/Widget/turf_time.dart';

class TurfDetailsScreen extends StatefulWidget {
  const TurfDetailsScreen({super.key, required String id});

  @override
  State<TurfDetailsScreen> createState() => _TurfDetailsScreenState();
}

class _TurfDetailsScreenState extends State<TurfDetailsScreen> {
  List<bool> selectedStates = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          'TURF DETAILS',
          style: TextStyle(
            color: Color(0xFF494949),
            fontSize: 20.sp,
            fontFamily: 'Fira Sans Extra Condensed',
            fontWeight: FontWeight.w500,
          ),
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 41.h),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 200.h,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    image: DecorationImage(
                      image: AssetImage("images/detail1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    image: DecorationImage(
                      image: AssetImage("images/detail2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    image: DecorationImage(
                      image: AssetImage("images/detail3.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 51.h),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 70).r,
                  child: Text(
                    'ABC Soccer Club Kakkanad',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Fira Sans Extra Condensed',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 15).r,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Non nec sollicitudin tellus sagittis nisi. Interdum et ultrices egestas eu sem. Adipiscing velit.',
                    style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 15.sp,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 32).r,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 18.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        'Kakkanad , infopark expressway , Kochi ,\n Kerala',
                        style: TextStyle(
                          color: Color(0xFF3792C4),
                          fontSize: 13.sp,
                          fontFamily: 'Fira Sans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 18.w),
                      Icon(
                        Icons.explore,
                        color: Colors.blue,
                        size: 18.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.h),
                Padding(
                  padding: const EdgeInsets.only(left: 30).r,
                  child: Row(
                    children: [
                      TurfFacility(
                        imagepath: 'images/fac1.png',
                        mytext: 'Electricity',
                        isSelected: selectedStates[0],
                        onSelect: (isSelected) {
                          setState(() {
                            selectedStates[0] = isSelected;
                          });
                        },
                      ),
                      SizedBox(width: 33.w),
                      TurfFacility(
                        imagepath: 'images/fac2.png',
                        mytext: 'Water',
                        isSelected: selectedStates[1],
                        onSelect: (isSelected) {
                          setState(() {
                            selectedStates[1] = isSelected;
                          });
                        },
                      ),
                      SizedBox(width: 33.w),
                      TurfFacility(
                        imagepath: 'images/fac3.png',
                        mytext: 'Parking',
                        isSelected: selectedStates[2],
                        onSelect: (isSelected) {
                          setState(() {
                            selectedStates[2] = isSelected;
                          });
                        },
                      ),
                      SizedBox(width: 33.w),
                      TurfFacility(
                        imagepath: 'images/fac4.png',
                        mytext: 'Ev charging',
                        isSelected: selectedStates[3],
                        onSelect: (isSelected) {
                          setState(() {
                            selectedStates[3] = isSelected;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12).r,
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 110).r,
                        child: Text(
                          'Schedule Appointment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Fira Sans Condensed',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 28.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10).r,
                        child: HorizontalCalendar(
                          date: DateTime.now(),
                          initialDate: DateTime.now(),
                          textColor: Colors.black45,
                          backgroundColor: Colors.white,
                          selectedColor: Colors.blue,
                          // showMonth: true,
                          locale: Localizations.localeOf(context),
                          onDateSelected: (date) {
                            print(date.toString());
                          },
                        ),
                      ),
                      SizedBox(height: 39.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10).r,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TimeContainer(time: '09.00am-10.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '10.00am-11.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '11.00am-12.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '02.00am-03.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '03.00am-04.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '05.00am-06.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '06.00am-07.00am'),
                              SizedBox(width: 6.w),
                              TimeContainer(time: '07.00am-08.00am'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
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
                          _showConfirmationDialog(context);
                        },
                        child: Text(
                          'BOOK YOUR SLOT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Fira Sans Condensed',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirm Booking',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'Fira Sans Extra Condensed',
              fontWeight: FontWeight.w500,
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are you sure you want to book the slot \nfor May 10th 2022 ( Sunday ). Confirm and\npay an advance booking amount .',
                style: TextStyle(
                  color: Color(0xFF6A6A6A),
                  fontSize: 20.sp,
                  fontFamily: 'Fira Sans Extra Condensed',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 48.h,
                    width: 120.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                  ),
                  SizedBox(
                    height: 48.h,
                    width: 120.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        print('Slot booked!');
                      },
                      child: Text('CONFIRM'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
