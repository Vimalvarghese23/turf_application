import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameContainer extends StatefulWidget {
  final String imagePath;
  final String name;
  final VoidCallback? onTap;

  const GameContainer({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  _GameContainerState createState() => _GameContainerState();
}

class _GameContainerState extends State<GameContainer> {
  Color _containerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16).r,
      child: InkWell(
        onTap: widget.onTap ?? _onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70.w,
              height: 70.h,
              decoration: ShapeDecoration(
                color: _containerColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.w,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFD7D7D7),
                  ),
                  borderRadius: BorderRadius.circular(8).r,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(width: 58.w, height: 55.h),
                  ),
                  Positioned(
                    left: 3,
                    top: 5,
                    right: 3,
                    bottom: 5,
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              widget.name,
              style: TextStyle(
                color: Color(0xFF3792C4),
                fontSize: 14.sp,
                fontFamily: 'Fira Sans Extra Condensed',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _containerColor =
          _containerColor == Colors.white ? Colors.blue : Colors.white;
    });
  }
}
