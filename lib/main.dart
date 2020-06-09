import 'package:covid19/india/india_page.dart';
import 'package:flutter/material.dart';
import 'package:covid19/pages/home.dart';
import 'package:covid19/pages/loding.dart';
import 'package:covid19/errorpages/error_page.dart';


void main() {
  runApp(MaterialApp(
    title: 'Covid 19',
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => Loding(),
      '/indiaPage' : (context) => IndiaPage(),
      '/home' : (context) => Home(),
      '/error404' : (context) => ErrorPage(),


    },
  ));
}




