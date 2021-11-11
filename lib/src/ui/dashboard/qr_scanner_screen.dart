import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/components/dropdown_button_field.dart';
import 'package:luminator/src/ui/dashboard/ListItem.dart';

class qr_scanner_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return qr_scanner_screen_state();
  }
}

class qr_scanner_screen_state extends State<qr_scanner_screen> {
  List <String> spinnerList = [
    'One',
    'Two',
    'Three',
  ] ;
  var dropDownValue = "";
  @override
  void initState() {
    dropDownValue = spinnerList[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(appBar:AppBar(title: Text("Scanner"),),body: Container(
            height: size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/background_img.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Row(
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
                        ),
                      ),
                    ),
                    Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage("assets/icons/qr.png"),
                              height: 175,
                              width: 175),
                          SizedBox(height: 20),
                          SizedBox(
                              width: double.infinity,
                              child: Text("Scan QR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}

