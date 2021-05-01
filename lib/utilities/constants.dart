import 'package:flutter/material.dart';

const String appKey = '3fd6cc5ac3f139ad4a409e66ab231fdd';
const String openWeatherBaseURL =
    'https://api.openweathermap.org/data/2.5/weather';
//https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b1b15e88fa797225412429c1c50c122a1

const int errorTemperature = 0;
const String errorCondition = 'Error';
const String errorMessage = 'Error while fetching weather data';
const String errorCity = '';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

InputDecoration kSearchDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide.none,
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter location here',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
);
