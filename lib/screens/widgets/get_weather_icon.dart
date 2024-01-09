import 'package:flutter/material.dart';

Widget getWeatherIcon(int code) {
  if (code < 300) {
    return Image.asset(
      'assets/1.png',
      scale: 1.5,
    );
  } else if (code < 400) {
    return Image.asset(
      'assets/2.png',
      scale: 1.5,
    );
  } else if (code < 600) {
    return Image.asset(
      'assets/3.png',
      scale: 1.5,
    );
  } else if (code < 700) {
    return Image.asset(
      'assets/4.png',
      scale: 1.5,
    );
  } else if (code < 800) {
    return Image.asset(
      'assets/5.png',
      scale: 1.5,
    );
  } else if (code == 800) {
    return Image.asset(
      'assets/6.png',
      scale: 1.5,
    );
  } else if (code <= 804) {
    return Image.asset(
      'assets/7.png',
      scale: 1.5,
    );
  } else {
    return Image.asset(
      'assets/7.png',
      scale: 1.5,
    );
  }
}
