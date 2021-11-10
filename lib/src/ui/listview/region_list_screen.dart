import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminator/src/ui/listview/zone_list_screen.dart';

class region_list_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return region_list_screen_state();
  }
}

class region_list_screen_state extends State<region_list_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: regionListview());
  }
}

class regionListview extends StatelessWidget {
  final titles = ["VLR", "CJB", "MAA"];
  final subtitles = ["Vellore", "Coimbatore", "Chennai"];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
      ),
        body: Container(
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: titles.length,
              itemBuilder: (context, index) {

                return Card(
                    child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) => zone_list_screen()));
                        },
                        title: Text(titles[index]),
                        subtitle: Text(subtitles[index]),
                        leading: const CircleAvatar(
                            backgroundImage: AssetImage("assets/icons/logo.png")),
                        trailing: Icon(icons[index])));
              })));


    // return Container(
    //     padding: const EdgeInsets.all(20.0),
    //     height: size.height,
    //     width: double.infinity,
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage("assets/icons/background_img.jpeg"),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     child: ListView.separated(
    //         separatorBuilder: (BuildContext context, int index) =>
    //             const Divider(),
    //         itemCount: titles.length,
    //         itemBuilder: (context, index) {
    //
    //           return Card(
    //               child: ListTile(
    //                   onTap: () {
    //                     Navigator.of(context).pushReplacement(MaterialPageRoute(
    //                         builder: (BuildContext context) => zone_list_screen()));
    //                   },
    //                   title: Text(titles[index]),
    //                   subtitle: Text(subtitles[index]),
    //                   leading: const CircleAvatar(
    //                       backgroundImage: AssetImage("assets/icons/logo.png")),
    //                   trailing: Icon(icons[index])));
    //         }));
  }
}
