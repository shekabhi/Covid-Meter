import 'package:flutter/material.dart';

class SelectState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Covid 19",
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Colors.blue[400],
                  Colors.blue[600],
                ],
              )),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListView(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'MH' ,
                    });
                  },
                  child: Card(
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
                            "Maharashtra",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : "TN" ,
                    });
                  },
                  child: Card(
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
                            "Tamil Nadu",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'DL' ,
                    });
                  },
                  child: Card(
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
                            'Delhi',
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'GJ' ,
                    });
                  },
                  child: Card(
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
                            "Gujarat",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'UP' ,
                    });
                  },
                  child: Card(
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
                            "Uttar Pradesh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'RJ' ,
                    });
                  },
                  child: Card(
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
                            "Rajasthan",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'MP' ,
                    });
                  },
                  child: Card(
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
                            "Madhya Pradesh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'WB' ,
                    });
                  },
                  child: Card(
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
                            "West Bengal",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'UN' ,
                    });
                  },
                  child: Card(
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
                            "State Unassigned",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'KA' ,
                    });
                  },
                  child: Card(
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
                            "Karnataka",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'HR' ,
                    });
                  },
                  child: Card(
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
                            "Haryana",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'BR' ,
                    });
                  },
                  child: Card(
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
                            "Bihar",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'AP' ,
                    });
                  },
                  child: Card(
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
                            "Andhra Pradesh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'JK' ,
                    });
                  },
                  child: Card(
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
                            "Jammu and Kashmir",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'TG' ,
                    });
                  },
                  child: Card(
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
                            "Telangana",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'OR' ,
                    });
                  },
                  child: Card(
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
                            "Odisha",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'AS' ,
                    });
                  },
                  child: Card(
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
                            "Assam",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'PB' ,
                    });
                  },
                  child: Card(
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
                            "Punjab",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'KL' ,
                    });
                  },
                  child: Card(
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
                            "Kerala",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'UT' ,
                    });
                  },
                  child: Card(
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
                            "Uttarakhand",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'JH' ,
                    });
                  },
                  child: Card(
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
                            "Jharkhand",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'CT' ,
                    });
                  },
                  child: Card(
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
                            "Chhattisgarh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'TR' ,
                    });
                  },
                  child: Card(
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
                            "Tripura",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'HP' ,
                    });
                  },
                  child: Card(
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
                            "Himachal Pradesh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'GA' ,
                    });
                  },
                  child: Card(
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
                            "Goa",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'MN' ,
                    });
                  },
                  child: Card(
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
                            "Manipur",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'CH' ,
                    });
                  },
                  child: Card(
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
                            "Chandigarh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'PY' ,
                    });
                  },
                  child: Card(
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
                            "Puducherry",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'LA' ,
                    });
                  },
                  child: Card(
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
                            "Ladakh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'NL' ,
                    });
                  },
                  child: Card(
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
                            "Nagaland",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'MZ' ,
                    });
                  },
                  child: Card(
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
                            "Mizoram",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'AR' ,
                    });
                  },
                  child: Card(
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
                            "Arunachal Pradesh",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'ML' ,
                    });
                  },
                  child: Card(
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
                            "Meghalaya",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'AN' ,
                    });
                  },
                  child: Card(
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
                            "Andaman and Nicobar Islands",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'DN' ,
                    });
                  },
                  child: Card(
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
                            "Dadra and Nagar Haveli" + "\nand Daman and Diu",
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
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'SK' ,
                    });
                  },
                  child: Card(
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
                            "Sikkim",
                            style: TextStyle(
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/statePage' ,arguments: {
                      'stateCode' : 'LD' ,
                    });
                  },
                  child: Card(
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
                            "Lakshadweep",
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
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
