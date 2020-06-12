import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {} ;

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    //print("Data in Home $data");
    //data = data.isNotEmpty ? data : Navigator.pushNamed(context, '/error404');

    int totalConfirmed = data.values.elementAt(0) ;
    int totalDeath = data.values.elementAt(1);
    int totalRecovered = data.values.elementAt(2);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "COVID 19",
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.blue[300],
                ],
              )),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton.icon(
                      onPressed: () async {
                        Navigator.pushNamed(context, '/indiaPage');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF42A5F5),
                        size: 30.0,
                      ) ,
                      label: Text(
                        'Tap To Choose India',
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                          wordSpacing: -1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton.icon(
                      onPressed: () async {
                        Navigator.pushNamed(context, '/selectState');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF42A5F5),
                        size: 30.0,
                      ) ,
                      label: Text(
                        'StateWise Data',
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Text(
                        "World Data : ",
                      style: TextStyle(
                        fontSize: 25.0,
                        letterSpacing: 0.7,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Total Confirmed: $totalConfirmed',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Total Recovered : $totalRecovered',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Total Death : $totalDeath',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        )
      ),
    );
  }
}