import 'package:flutter/material.dart';

Widget getWeatherIcon(int code) {
  if (code < 300) {
    return Image.asset(
      'assets/1.png',
      height: 300,
      width: 300,
    );
  } else if (code < 400) {
    return Image.asset(
      'assets/2.png',
      height: 300,
      width: 300,
    );
  } else if (code < 600) {
    return Image.asset(
      'assets/3.png',
      height: 300,
      width: 300,
    );
  } else if (code < 700) {
    return Image.asset(
      'assets/4.png',
      height: 300,
      width: 300,
    );
  } else if (code < 800) {
    return Image.asset(
      'assets/5.png',
      height: 300,
      width: 300,
    );
  } else if (code == 800) {
    return Image.asset(
      'assets/6.png',
      height: 300,
      width: 300,
    );
  } else if (code <= 804) {
    return Image.asset(
      'assets/7.png',
      height: 300,
      width: 300,
    );
  } else {
    return Image.asset(
      'assets/7.png',
      height: 300,
      width: 300,
    );
  }
}
