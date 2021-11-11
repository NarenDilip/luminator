import 'package:flutter/material.dart';
import 'package:luminator/src/models/loginrequester.dart';
import 'package:luminator/src/utils/colors.dart';



class DropdownButtonField extends StatelessWidget {
  final String dropdownValue;
  final ValueChanged<dynamic>? onChanged;
  final List<String> spinnerItems;

  const DropdownButtonField(
      { Key? key,
      required this.dropdownValue,
        required this.onChanged,
      required this.spinnerItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: gray),
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue.isNotEmpty?dropdownValue:null,
        icon: Padding(padding: EdgeInsets.only(right: 10),child: Icon(Icons.arrow_drop_down),),
        iconSize: 24,
        elevation: 16,
        underline: Container(
          color: Colors.transparent,
        ),
        style: TextStyle(color: Colors.grey, fontSize: 16),
       onChanged: onChanged,
        items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(padding: EdgeInsets.only(left: 5),child: Text(value),),
          );
        }).toList(),
      ),
    );
  }
}
