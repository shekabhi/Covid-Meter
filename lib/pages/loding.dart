import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loding extends StatefulWidget {
  @override
  _LodingState createState() => _LodingState();
}

class _LodingState extends State<Loding> {

  void setupWorldData() async {

    Map data;
    try {
      //make the request
      Response response = await get('https://api.covid19api.com/world/total');
      data = jsonDecode(response.body);
      //print(data) ;
      //print(data.values.elementAt(0));

    }
    catch (e) {
      print("catch error : $e");
    }

    Navigator.pushReplacementNamed(context, '/home' , arguments: {
      'TotalConfirmed' : data.values.elementAt(0),
      'TotalDeaths': data.values.elementAt(1),
      'TotalRecovered' : data.values.elementAt(2),
    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SpinKitFadingCircle(
            color: Colors.blue,
            size: 70.0,
          ),
        )
    );
  }
}

