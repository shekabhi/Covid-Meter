import 'package:flutter/material.dart';
import 'package:covid19/pages/choose_country.dart';
import 'package:covid19/pages/home.dart';
import 'package:covid19/pages/loding.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loding(),
      '/home' : (context) => Home(),
      '/location' : (context) => ChooseCountry(),
    },
  ));
}




