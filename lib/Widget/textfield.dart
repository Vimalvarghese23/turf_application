import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextWidget extends StatelessWidget {
  final String mytext;
  final dynamic format;
  final TextEditingController controller;

  const MyTextWidget({
    Key? key,
    required this.mytext,
    required this.format,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59.h,
      width: 356.w,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 18.w),
        child: TextField(
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.sp,
            fontFamily: 'Fira Sans Condensed',
            fontWeight: FontWeight.w400,
          ),
          controller: controller,
          inputFormatters: [
            format,
          ],
          decoration: InputDecoration(
            fillColor: Color(0xFFF2F2F2),
            labelText: mytext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
            ),
          ),
        ),
      ),
    );
  }
}
