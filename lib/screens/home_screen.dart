import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 1.1 * kToolbarHeight, 23, 20),
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
