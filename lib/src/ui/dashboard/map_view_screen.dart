import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/login/login_screen.dart';

class map_view_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return map_view_screen_state();
  }
}

class map_view_screen_state extends State<map_view_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MapviewForm());
  }
}

class MapviewForm extends StatelessWidget {
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
                        "Map View",
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
