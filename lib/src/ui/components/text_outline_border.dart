import 'package:flutter/material.dart';
import 'package:luminator/src/constants/const.dart';


  InputDecoration inputDecorator(String hinLabel) {
    return InputDecoration(
      counterText: "",
      suffixIcon: const Icon(Icons.search),
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(8),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: gray, width: 1.0),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: gray, width: 1.0),
      ),
      hintStyle: const TextStyle(
        fontSize: 13.0,
      ),
      hintText: hinLabel,
    );
  }
