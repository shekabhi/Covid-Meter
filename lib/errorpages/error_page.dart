import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 25,178,238),
                Color.fromARGB(255, 21,236,229)
              ],
            )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 60.0,),
                Image(
                  image: AssetImage('assets/error404.png'),
                ),
                SizedBox(height: 40,),
                Text(
                  "Please Try Again",
                  style: GoogleFonts.pacifico(
                      textStyle: TextStyle(

                        fontSize: 38,
                        letterSpacing: 0.5,
                      )
                  )
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}


