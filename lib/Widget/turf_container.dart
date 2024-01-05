import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TurfContainer extends StatefulWidget {
  final String imagePath;
  final String name;
  final String text1;
  final String text2;
  final dynamic text3;
  final VoidCallback? onTap;
  final TextStyle nameStyle;
  final TextStyle text1Style;
  final TextStyle text2Style;
  final TextStyle text3Style;

  const TurfContainer({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.onTap,
    this.nameStyle = const TextStyle(
      color: Color(0xFF3792C4),
      fontSize: 14,
      fontFamily: 'Fira Sans Extra Condensed',
      fontWeight: FontWeight.w400,
    ),
    this.text1Style = const TextStyle(
      color: Color(0xFF353535),
      fontSize: 17,
      fontFamily: 'Fira Sans Extra Condensed',
      fontWeight: FontWeight.w400,
    ),
    this.text2Style = const TextStyle(
      color: Color(0xFF757575),
      fontSize: 11,
      fontFamily: 'Fira Sans',
      fontWeight: FontWeight.w400,
    ),
    this.text3Style = const TextStyle(
      color: Color(0xFF00A040),
      fontSize: 11,
      fontFamily: 'Fira Sans',
      fontWeight: FontWeight.w400,
    ),
  }) : super(key: key);

  @override
  _TurfContainerState createState() => _TurfContainerState();
}

class _TurfContainerState extends State<TurfContainer> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10).r,
      child: InkWell(
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          widget.onTap?.call();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 162.w,
              height: 207.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10).r,
                  bottomLeft: Radius.circular(10).r,
                ),
                border: Border.all(
                  width: 2.w,
                  color: Color(0xFFD7D7D7),
                ),
              ),
              child: Image.network(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        widget.name,
                        style: widget.nameStyle,
                      ),
                      SizedBox(width: 25.w),
                      Icon(
                        Icons.favorite,
                        color: isFavorite ? Colors.red : Colors.red,
                        size: 24.sp,
                      ),
                      SizedBox(width: 5.w),
                    ],
                  ),
                  SizedBox(height: 7.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                          size: 18.sp,
                        ),
                        SizedBox(width: 1.w),
                        Text(
                          widget.text1,
                          style: widget.text1Style,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    widget.text2,
                    style: widget.text2Style,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.green,
                        size: 18.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        widget.text3,
                        style: widget.text3Style,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
