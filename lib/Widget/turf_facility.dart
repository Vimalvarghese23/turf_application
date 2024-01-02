import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TurfFacility extends StatefulWidget {
  final String imagepath;
  final String mytext;
  final bool isSelected;
  final Function(bool) onSelect;

  const TurfFacility({
    Key? key,
    required this.imagepath,
    required this.mytext,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  _TurfFacilityState createState() => _TurfFacilityState();
}

class _TurfFacilityState extends State<TurfFacility> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            widget.onSelect(!widget.isSelected);
          },
          child: Container(
            width: 26.w,
            height: 26.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5).r,
              color: widget.isSelected ? Colors.blue : null,
              image: DecorationImage(
                image: AssetImage(widget.imagepath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          widget.mytext,
          style: TextStyle(
            color: widget.isSelected ? Colors.blue : Color(0xFF565555),
            fontSize: 8.sp,
            fontFamily: 'Fira Sans Extra Condensed',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
