import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';
import 'package:weather_app/screens/widgets/get_weather_icon.dart';
import 'package:weather_app/screens/widgets/weather_detail_item.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String greeting() {
      var hour = DateTime.now().hour;
      if (hour < 12) {
        return 'Good Morning';
      }
      if (hour < 17) {
        return 'Good Afternoon';
      }
      return 'Good Evening';
    }

    return BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
      builder: (context, state) {
        if (state is WeatherBlocSuccess) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '📍${state.weather.areaName}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(greeting(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                Center(
                  child: getWeatherIcon(state.weather.weatherConditionCode!),
                ),
                Center(
                  child: Text(
                    '${state.weather.temperature!.celsius!.round()}°C',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 55),
                  ),
                ),
                Center(
                  child: Text(
                    state.weather.weatherMain!.toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    DateFormat('EEEE dd ·')
                        .add_jm()
                        .format(state.weather.date!),
                    // 'Sunday 07 · 02.01am',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WeatherDetailItem(
                        icon: 'assets/11.png',
                        label: 'Sunrise',
                        value: DateFormat()
                            .add_jm()
                            .format(state.weather.sunrise!),
                      ),
                      WeatherDetailItem(
                        icon: 'assets/12.png',
                        label: 'Sunset',
                        value:
                            DateFormat().add_jm().format(state.weather.sunset!),
                      ),
                    ]),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.grey),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WeatherDetailItem(
                        icon: 'assets/13.png',
                        label: 'Temp Max',
                        value: '${state.weather.tempMax!.celsius!.round()}°C',
                      ),
                      WeatherDetailItem(
                        icon: 'assets/14.png',
                        label: 'Temp Min',
                        value: '${state.weather.tempMin!.celsius!.round()}°C',
                      ),
                    ]),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
