import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:luminator/src/ui/dashboard/device_count_screen.dart';
import 'package:luminator/src/ui/dashboard/device_list_screen.dart';
import 'package:luminator/src/ui/dashboard/map_view_screen.dart';
import 'package:luminator/src/ui/dashboard/qr_scanner_screen.dart';

class dashboard_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dashboard_screenState();
  }
}

class dashboard_screenState extends State<dashboard_screen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    qr_scanner_screen(),
    device_list_screen(),
    map_view_screen(),
    device_count_screen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Feather.home,
              color: Colors.grey,
            ),
            title: Text('QR Scan'),
            activeIcon: Icon(
              Feather.home,
              color: Colors.purple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.calendar,
              color: Colors.grey,
            ),
            title: Text('Search List'),
            activeIcon: Icon(
              FontAwesome.calendar,
              color: Colors.purple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvilIcons.user,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('Map View'),
            activeIcon: Icon(
              EvilIcons.user,
              color: Colors.purple,
              size: 36,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvilIcons.user,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('Dashboard'),
            activeIcon: Icon(
              EvilIcons.user,
              color: Colors.purple,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
