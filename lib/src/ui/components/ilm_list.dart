import 'package:flutter/material.dart';
import 'package:luminator/src/constants/const.dart';

class DeviceListCard extends StatelessWidget {
  final String labelName;
  final GestureTapCallback onTab;

  const DeviceListCard({Key? key, required this.labelName, required this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                labelName,
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
            onTap: onTab,
          ),
        ),

      ],
    );
  }
}
