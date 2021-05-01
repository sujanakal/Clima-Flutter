import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';

class WeatherModel {
  Future<dynamic> getCityWeather(dynamic cityName) async {
    NetworkHelper networkHelper = new NetworkHelper();
    var decodedData = await networkHelper
        .getData('$openWeatherBaseURL?q=$cityName&appid=$appKey&units=metric');
    return decodedData;
  }

  Future<dynamic> getCurrentLocWeather() async {
    Location location = new Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = new NetworkHelper();
    String uri =
        '$openWeatherBaseURL?lat=${location.getLatitude()}&lon=${location.getLongitude()}&appid=$appKey&units=metric';
    print(uri);
    var decodedData = await networkHelper.getData(uri);
    return decodedData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
