import 'package:covid19/india/india_page.dart';
import 'package:covid19/state_data/selectState.dart';
import 'package:covid19/state_data/state_page.dart';
import 'package:flutter/material.dart';
import 'package:covid19/pages/home.dart';
import 'package:covid19/pages/loding.dart';

void main() {
  runApp(MaterialApp(
    title: 'Covid 19',
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => Loding(),
      '/indiaPage' : (context) => IndiaPage(),
      '/statePage' : (context) => StatePage(),
      '/home' : (context) => Home(),
      '/selectState' : (context) => SelectState(),
    },
  ));
}




