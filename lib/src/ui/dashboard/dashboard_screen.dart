import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luminator/src/constants/const.dart';

class dashboard_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dashboard_screenState();
  }
}

class dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: dashboard_form());
  }
}

class dashboard_form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
        onWillPop: () async {
          final result = await showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text("Luminator"),
              content: const Text("Are you sure you want to exit?"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text("NO"),
                ),
                TextButton(
                  child: const Text('YES', style: TextStyle(color: Colors.red)),
                  onPressed: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                ),
              ],
            ),
          );
          return result;
        },
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.infinity,
                color: dashboardThemeColor,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                          }),
                    ),
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          const Image(
                              image: AssetImage("assets/icons/logo.png"),
                              height: 50,
                              width: 50),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            splashscreen_text.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 30,
                              color: purpleColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.topRight,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 50, 20, 20),
                              child: const Text(
                                "Logout",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: purpleColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat",
                                ),
                              ),
                            ))),
                    Center(
                        child: Container(
                      width: 180,
                      height: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            child: InkWell(
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/icons/qr.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                          ),
                          const Text(qr_text,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              )),
                        ],
                      ),
                    )),
                  ],
                ))));
  }
}
