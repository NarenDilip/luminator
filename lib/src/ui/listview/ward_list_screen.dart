import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/dashboard/dashboard_screen.dart';

class ward_list_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ward_list_screen_state();
  }
}

class ward_list_screen_state extends State<ward_list_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: wardListview());
  }
}

class wardListview extends StatelessWidget {
  final titles = ["VLR-1-1", "VLR-1-2", "VLR-1-3"];
  final subtitles = ["Vellore", "Vellore", "Vellore"];
  final icons = [Icons.ac_unit, Icons.ac_unit, Icons.ac_unit];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: const EdgeInsets.all(20.0),
        height: size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icons/background_img.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: titles.length,
            itemBuilder: (context, index) {

              return Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => dashboard_screen()));
                      },
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: const CircleAvatar(
                          backgroundImage: AssetImage("assets/icons/logo.png")),
                      trailing: Icon(icons[index])));
            }));
  }
}
