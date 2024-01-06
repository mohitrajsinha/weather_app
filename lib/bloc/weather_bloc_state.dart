part of 'weather_bloc_bloc.dart';

 class WeatherBlocState extends Equatable {
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

 class WeatherBlocInitial extends WeatherBlocState {}

 class WeatherBlocLoading extends WeatherBlocState {}

 class WeatherBlocFailure extends WeatherBlocState {}

 class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;

  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}
