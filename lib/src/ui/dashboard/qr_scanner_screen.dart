import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:luminator/src/constants/const.dart';
import 'package:luminator/src/ui/components/dropdown_button_field.dart';
import 'package:luminator/src/ui/dashboard/ListItem.dart';
import 'package:luminator/src/ui/scanner/qr_scanner.dart';
import 'package:luminator/src/utils/utility.dart';

class qr_scanner_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return qr_scanner_screen_state();
  }
}

class qr_scanner_screen_state extends State<qr_scanner_screen> {
  List<String> spinnerList = [
    'One',
    'Two',
    'Three',
  ];

  var dropDownValue = "";

  @override
  void initState() {
    dropDownValue = spinnerList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Luminator",
              style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat",
          )),
        ),
        body: Container(
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
                        Expanded(
                            child: DropdownButtonField(
                                dropdownValue: dropDownValue,
                                onChanged: (value) {
                                  setState(() {
                                    dropDownValue = value;
                                  });
                                },
                                spinnerItems: spinnerList)),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: DropdownButtonField(
                                dropdownValue: dropDownValue,
                                onChanged: (value) {
                                  setState(() {
                                    dropDownValue = value;
                                  });
                                },
                                spinnerItems: spinnerList)),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            child: DropdownButtonField(
                                dropdownValue: dropDownValue,
                                onChanged: (value) {
                                  setState(() {
                                    dropDownValue = value;
                                  });
                                },
                                spinnerItems: spinnerList)),
                      ],
                    ),
                  ),
                ),
                Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        child: InkWell(
                          onTap: () {
                            deviceFetcher(context);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/icons/qr.png',
                              width: 175,
                              height: 175,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
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
                ),
              ],
            ))));
  }
}

void deviceFetcher(BuildContext context) {
  Utility.isConnected().then((value) async {
    if (value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => QRScreen()),
          (route) => true).then((value) async {
        if (value != null) {
          // if (value.toString().length == 6) {
          // late Future<Device?> entityFuture;
          // Utility.progressDialog(context);
        }
      });
    } else {
      Fluttertoast.showToast(
          msg: no_network,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    }
  });
}
