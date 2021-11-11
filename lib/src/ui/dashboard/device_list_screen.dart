import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/components/dropdown_button_field.dart';
import 'package:luminator/src/ui/login/login_screen.dart';

class device_list_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return device_list_screen_state();
  }
}

class device_list_screen_state extends State<device_list_screen> {
  List <String> spinnerList = [
    'One',
    'Two',
    'Three',
  ] ;
  var dropDownValue = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Scaffold(appBar:AppBar(title: Text("Scanner"),),body: Container(
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
                          image: AssetImage("assets/icons/logo.png"),
                          height: 75,
                          width: 75),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Device List",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )))));
  }
}

class DeviceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
            height: size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/background_img.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(
                        image: AssetImage("assets/icons/logo.png"),
                        height: 75,
                        width: 75),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Device List",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ))));
  }
}
