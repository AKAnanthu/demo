import 'package:design_demo/History.dart';
import 'package:design_demo/Remote.dart';
import 'package:flutter/material.dart';

import 'Account.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Remote(),
    History(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        items: const [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.add_circle,
              color: Colors.grey,
            ),
            label: 'Remote',
            activeIcon: Icon(
              Icons.add_circle,
              color: Color(0xFF1A237E),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.text_snippet_outlined,
              color: Colors.grey,
            ),
            label: 'History',
            activeIcon: Icon(
              Icons.text_snippet_outlined,
              color: Color(0xFF1A237E),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color:Colors.grey,
            ),
            label: 'Account',
            activeIcon: Icon(
              Icons.account_circle_rounded,
              color: Color(0xFF1A237E),
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