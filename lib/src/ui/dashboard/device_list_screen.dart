import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/constants/const.dart';
import 'package:luminator/src/ui/components/dropdown_button_field.dart';
import 'package:luminator/src/ui/components/ilm_list.dart';
import 'package:luminator/src/ui/components/search_text_field.dart';
import 'package:luminator/src/ui/components/text_outline_border.dart';
import 'package:luminator/src/ui/login/login_screen.dart';

class device_list_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return device_list_screen_state();
  }
}

class device_list_screen_state extends State<device_list_screen> {
  List<String> spinnerList = [
    'One',
    'Two',
    'Three',
  ];

  var dropDownValue = "";
  late Color whiteColor, grayColor;
  var gray = Color(0xff979797);
  var white = Color(0xffffffff);
  bool? _isGroupSelected1,
      _isGroupSelected2,
      _isGroupSelected3,
      _isGroupSelected4,
      _ilmSearch,_isIlmList,_isCcmsList,_isGwList;
  final _ilmNode = TextEditingController();
  final _poleNumber = TextEditingController();
  final _gateWay = TextEditingController();
  final _ccmsController = TextEditingController();

  @override
  void initState() {
    whiteColor = Colors.white;
    grayColor = Colors.grey;
    setState(() {
      _isGroupSelected1 = false;
      _isGroupSelected2 = false;
      _isGroupSelected3 = false;
      _isGroupSelected4 = false;
      _ilmSearch = false;
      _isCcmsList = false;
      _isIlmList = false;
      _isGwList = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color ss;
    late Colors col;
    return Scaffold(
        body: Scaffold(
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
                    child: Column(
                  children: [
                    Padding(
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
                          SizedBox(
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
                          SizedBox(
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
                    Padding(
                        // used padding just for demo purpose to separate from the appbar and the main content
                        padding: const EdgeInsets.all(1),
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: 30,
                              padding: const EdgeInsets.all(2.5),
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Expanded(
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isGroupSelected1 = true;
                                              _isGroupSelected2 = false;
                                              _isGroupSelected3 = false;
                                              _isGroupSelected4 = false;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: getSelectedColor(
                                                    _isGroupSelected1!),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        topLeft:
                                                            Radius.circular(
                                                                12))),
                                            child: Text("ALL",
                                                style: TextStyle(
                                                  color: getSelectedTextColor(
                                                      _isGroupSelected1!),
                                                  fontSize: 14,
                                                )),
                                          ))),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1),
                                      child: Container(
                                          color: Colors.white, width: 1)),
                                  Expanded(
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isGroupSelected1 = false;
                                              _isGroupSelected2 = true;
                                              _isGroupSelected3 = false;
                                              _isGroupSelected4 = false;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            color: getSelectedColor(
                                                _isGroupSelected2!),
                                            child: Text("ILM",
                                                style: TextStyle(
                                                    color: getSelectedTextColor(
                                                        _isGroupSelected2!),
                                                    fontSize: 14)),
                                          ))),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1),
                                      child: Container(
                                          color: Colors.white, width: 1)),
                                  Expanded(
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isGroupSelected1 = false;
                                              _isGroupSelected2 = false;
                                              _isGroupSelected3 = true;
                                              _isGroupSelected4 = false;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            color: getSelectedColor(
                                                _isGroupSelected3!),
                                            child: Text("CCMS",
                                                style: TextStyle(
                                                    color: getSelectedTextColor(
                                                        _isGroupSelected3!),
                                                    fontSize: 14)),
                                          ))),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1),
                                      child: Container(
                                          color: Colors.white, width: 1)),
                                  Expanded(
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isGroupSelected1 = false;
                                              _isGroupSelected2 = false;
                                              _isGroupSelected3 = false;
                                              _isGroupSelected4 = true;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: getSelectedColor(
                                                    _isGroupSelected4!),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(12),
                                                        topRight:
                                                            Radius.circular(
                                                                12))),
                                            child: Text("GW",
                                                style: TextStyle(
                                                    color: getSelectedTextColor(
                                                        _isGroupSelected4!),
                                                    fontSize: 14)),
                                          ))),
                                ],
                              )),
                        )),
                    Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                    padding: EdgeInsets.all(18.0),
                                    child: Text(
                                      'SEARCH',
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        color: Colors.lightBlue,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: InkWell(
                                  child: const Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _ilmSearch = !_ilmSearch!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                              visible: _ilmSearch!,
                              child: Column(
                                children: [
                                  SearchTextField(
                                    hint: "ILM Node",
                                    controller: _ilmNode,
                                  ),
                                  SearchTextField(
                                    hint: "Pole Number",
                                    controller: _poleNumber,
                                  ),
                                  SearchTextField(
                                    hint: "CCMS",
                                    controller: _ccmsController,
                                  ),
                                  SearchTextField(
                                    hint: "GateWay",
                                    controller: _ilmNode,
                                  ),
                                  Container(
                                      width: size.width,
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: ElevatedButton(
                                        child: const Text("Search"),
                                        onPressed: () {},
                                      )),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          DeviceListCard(
                            labelName: "ILM List",
                            onTab: () {
                              setState(() {
                                _isIlmList = !_isIlmList!;
                              });
                            },
                          ),
                          Visibility(visible:_isIlmList! ,child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, top: 4, bottom: 4, right: 10),
                                    child: Text("ABFHFG6576"),
                                  ),
                                  onTap: () {},
                                );
                              }))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          DeviceListCard(
                            labelName: "CCMS List",
                            onTab: () {
                              setState(() {
                                _isCcmsList = !_isCcmsList!;
                              });
                            },
                          ),
                          Visibility(visible: _isCcmsList!,child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, top: 4, bottom: 4, right: 10),
                                    child: Text("ABFHFG6576"),
                                  ),
                                  onTap: () {},
                                );
                              }))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          DeviceListCard(
                            labelName: "GW List",
                            onTab: () {
                              setState(() {
                                _isGwList = !_isGwList!;
                              });
                            },
                          ),
                          Visibility(visible: _isGwList!,child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, top: 4, bottom: 4, right: 10),
                                    child: Text("ABFHFG6576"),
                                  ),
                                  onTap: () {},
                                );
                              }))
                        ],
                      ),
                    ),
                  ],
                )))));
  }

  Color getSelectedColor(bool isSelected) {
    if (isSelected) {
      return Colors.white;
    }
    return Colors.grey;
  }

  Color getSelectedTextColor(bool isSelected) {
    if (isSelected) {
      return Colors.blue;
    }
    return Colors.white;
  }

  void setChangedColor(int tab) {
    if (tab == 1) {
      _isGroupSelected1 = true;
    } else if (tab == 2) {
    } else if (tab == 3) {
    } else {}
  }
}

class DeviceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
            padding: new EdgeInsets.all(10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        TextField(
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'ILM Nodes',
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ])),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        TextField(
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Pole Numbers',
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ])),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        TextField(
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'CCMS Numbers',
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ])),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0),
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  labelText: 'GATEWAY Numbers',
                                  suffixIcon: Icon(Icons.search)),
                            )),
                      ])),
            ])));
  }
}
