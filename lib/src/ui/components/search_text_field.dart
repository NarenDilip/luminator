import 'package:flutter/material.dart';
import 'package:luminator/src/constants/const.dart';
import 'package:luminator/src/ui/components/text_outline_border.dart';

class SearchTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const SearchTextField(
      {Key? key,
      required this.hint,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(4),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        // ignore: missing_return
        decoration: inputDecorator(hint),
      ),
    );
  }
}
