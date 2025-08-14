import '../services/location.dart';
import '../services/network.dart';

const String apiKey = '7a5a3b7f7b86eaedbcff340ee0296e58';

class WeatherModel {
  Future<dynamic> getWeatherDataByLocation(String location) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric';

    Network network = Network(uri: url);
    var decodedData = await network.getWeatherDetails();
    return decodedData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = new Location();
    await location.getLocation();

    Network network = new Network(
      uri:
          'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric',
    );

    var decodedData = await network.getWeatherDetails();
    return decodedData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
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
