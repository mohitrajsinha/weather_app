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
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, top: kToolbarHeight, right: 25),
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
