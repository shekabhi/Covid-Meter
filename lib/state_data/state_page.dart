import 'package:covid19/state_data/StateData.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  Map dataReached = {} ;

  Future<List<StateData>> __getDistrictData() async{

    var stateCode = {"UN" : 0 , "AN" : 1, "AP" : 2, "AR" : 3,
      "AS" : 4, "BR" : 5, "CH" :6, "CT" :7, "DL" : 8, "DN" :9,
      "GA" :10, "GJ" :11, "HP" :12, "HR" :13, "JH" :14,"JK" :15,
      "KA" :16,"KL" :17, "LA" :18, "LD" :19, "MH" :20, "ML" :21,
      "MN" :22, "MP" :23, "MZ" :24, "NL" :25, "OR" :26, "PB" :27,
      "PY" :28, "RJ" :29, "SK" :30, "TG" :31, "TN" :32, "TR" :33,
      "UP" :34, "UT" :35, "WB" :36,
    } ;

    dataReached = dataReached.isNotEmpty ? dataReached : ModalRoute.of(context).settings.arguments;
    //print("data reached : ${dataReached.values.elementAt(0)}");

    Response response = await get('https://api.covid19india.org/v2/state_district_wise.json');
    var jsonData = json.decode(response.body);

//    for(int  i=0 ; i<37 ; i++){
//      print(jsonData.values.elementAt(i).values.elementAt(1));
//    }

    int id = stateCode[dataReached.values.elementAt(0)] ;
    print("id is : $id");
    var data = jsonData[id].values.elementAt(2) ;
    var len = data.length;
    //print(data.length);
    //print(test.runtimeType);
    //print(jsonData.values.elementAt(id).values.elementAt(0).values.elementAt(0).values.elementAt(2));

    List<StateData> statedatas = [] ;

    for(int i=0 ; i<len ; i++){
      StateData stateData = new StateData(data[i]["district"], data[i]["active"]
          , data[i]["confirmed"], data[i]["deceased"], data[i]["recovered"]) ;

      statedatas.add(stateData);

    }
   // print("State Data :  ${statedatas.length}");

    return statedatas ;
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
          future: __getDistrictData(),
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
                                  snapshot.data[index].district,
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
                                    "\nTotal Deaths : ${snapshot.data[index].deceased}" ,
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
