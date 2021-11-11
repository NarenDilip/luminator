import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/components/dropdown_button_field.dart';
import 'package:luminator/src/ui/login/login_screen.dart';

class device_count_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return device_count_screen_state();
  }
}

class device_count_screen_state extends State<device_count_screen> {
  List <String> spinnerList = [
    'One',
    'Two',
    'Three',
  ] ;
  var dropDownValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text("Scanner"),),body: Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(4),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child:   DropdownButtonField(dropdownValue: dropDownValue,onChanged: (value){
                setState(() {
                  dropDownValue = value;
                });
              },spinnerItems: spinnerList)),
              SizedBox(width: 4,),
              Expanded(child:   DropdownButtonField(dropdownValue: dropDownValue,onChanged: (value){
                setState(() {
                  dropDownValue = value;
                });
              },spinnerItems: spinnerList)),
              SizedBox(width: 4,),
              Expanded(child:   DropdownButtonField(dropdownValue: dropDownValue,onChanged: (value){
                setState(() {
                  dropDownValue = value;
                });
              },spinnerItems: spinnerList)),

            ],
          ),),
          Expanded(child: SingleChildScrollView(
            child: DeviceCountForm(),
          ))
        ],
      ),
    ));
  }
}

class DeviceCountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Container(
            padding: new EdgeInsets.all(10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[

              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const SizedBox(height: 10),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "ILM",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                            child: Align(
                              child: Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                        const SizedBox(height: 10),
                        Row(
                          children: const <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                                child: Align(
                                  child: Text(
                                    "ON",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                                child: Align(
                                  child: Text(
                                    "OFF",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                                child: Align(
                                  child: Text(
                                    "NC",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                                child: Align(
                                  child: Text(
                                    "30",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                                child: Align(
                                  child: Text(
                                    "40",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                                child: Align(
                                  child: Text(
                                    "40",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                                child: Align(
                                  child: Icon(Icons.add),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                                child: Align(
                                  child: Icon(Icons.settings),
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                  ])),
              const SizedBox(height: 20),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child:
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "CCMS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                            child: Align(
                              child: Text(
                                "50",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "ON",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "OFF",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                            child: Align(
                              child: Text(
                                "NC",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "30",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "40",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                            child: Align(
                              child: Text(
                                "40",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Icon(Icons.add),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                            child: Align(
                              child: Icon(Icons.settings),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ])),
              const SizedBox(height: 20),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child:
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "GATEWAY",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                            child: Align(
                              child: Text(
                                "110",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "ON",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "OFF",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                            child: Align(
                              child: Text(
                                "NC",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "30",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                            child: Align(
                              child: Text(
                                "40",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                            child: Align(
                              child: Text(
                                "40",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0),
                            child: Align(
                              child: Icon(Icons.add),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                            child: Align(
                              child: Icon(Icons.settings),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ])),
            ])));
  }
}
