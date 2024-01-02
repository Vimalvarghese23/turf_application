import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeContainer extends StatefulWidget {
  final dynamic time;
  const TimeContainer({Key? key, required this.time}) : super(key: key);

  @override
  _TimeContainerState createState() => _TimeContainerState();
}

class _TimeContainerState extends State<TimeContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 26.h,
        width: 107.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.blue : null,
        ),
        child: Center(
          child: Text(
            widget.time,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 10.sp,
              fontFamily: 'Fira Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
