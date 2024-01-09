import 'package:flutter/material.dart';
import 'package:weather_app/screens/widgets/blurred_container.dart';
import 'package:weather_app/screens/widgets/circle_container.dart';
import 'package:weather_app/screens/widgets/color_container.dart';
import 'package:weather_app/screens/widgets/weather_detail_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            25, kToolbarHeight, 23, kBottomNavigationBarHeight),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Stack(
            children: [
              CircleContainer(),
              ColoredContainer(color: Colors.indigo, height: 250),
              BlurredContainer(),
              WeatherDetailWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
