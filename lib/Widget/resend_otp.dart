import 'dart:async';

import 'package:flutter/material.dart';

class OtpTimerButton extends StatefulWidget {
  final int duration;
  final VoidCallback onPressed;

  const OtpTimerButton({
    Key? key,
    required this.duration,
    required this.onPressed,
  }) : super(key: key);

  @override
  _OtpTimerButtonState createState() => _OtpTimerButtonState();
}

class _OtpTimerButtonState extends State<OtpTimerButton> {
  late int _remainingTime;
  late bool _isTimerRunning;

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.duration;
    _isTimerRunning = false;
  }

  void _startTimer() {
    setState(() {
      _isTimerRunning = true;
    });

    Timer.periodic(Duration(seconds: 30), (timer) {
      if (_remainingTime == 0) {
        timer.cancel();
        setState(() {
          _isTimerRunning = false;
        });
      } else {
        setState(() {
          _remainingTime--;
        });
      }
    });
  }

  void _resetTimer() {
    setState(() {
      _remainingTime = widget.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(Icons.refresh),
      onPressed: _isTimerRunning
          ? null
          : () {
              _startTimer();
              widget.onPressed();
            },
    );
  }
}
