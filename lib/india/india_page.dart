import 'package:covid19/india/raw_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';


class IndiaPage extends StatefulWidget {

  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {


  Future<List<Statewise>> _getStateData() async{
    Response response = await get('https://api.covid19india.org/data.json');
    var jsonData = json.decode(response.body);

    print(jsonData.values.elementAt(1).length);

    List<Statewise> statewises = [] ;
    for(var u in jsonData.values.elementAt(1)){
      Statewise statewise = Statewise(u["active"],u["confirmed"],u["deaths"],
          u["deltaconfirmed"],u["deltadeaths"],u["deltarecovered"],u["lastupdatedtime"],
          u["migratedother"],u["recovered"],u["state"],u["statecode"],u["statenotes"]) ;
      statewises.add(statewise);
    }

    print(statewises.length);

    return statewises ;

  }

  @override
  Widget build(BuildContext context) {

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
        child: FutureBuilder(
          future: _getStateData(),
          builder: (BuildContext context ,AsyncSnapshot snapshot ){
            if(snapshot.data == null){
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
            else{
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context , int index){
                    return Container(
                      decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blue[200],
                              Colors.white,
                              Colors.white,
                              Colors.white,
                              Colors.blue[200],

                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: ListTile(
                                title: Text(
                                    snapshot.data[index].state,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    letterSpacing: 1.0,
                                    wordSpacing: 2.0,
                                    fontSize: 25.0,
                                    color: Colors.blue[600],
                                  ),
                                ),
                                subtitle: Text("\nTotal Confirmed : ${snapshot.data[index].confirmed}" +
                                    "\nTotal Active : ${snapshot.data[index].active}" +
                                    "\nTotal Recovered : ${snapshot.data[index].recovered}" +
                                    "\nTotal Deaths : ${snapshot.data[index].deaths}" +
                                    "\nLast Update : ${snapshot.data[index].lastupdatedtime}" ,
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    wordSpacing: 1.0,
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    );
                  }
              );
            }
          },
        ),

      ),
    );
  }


}
