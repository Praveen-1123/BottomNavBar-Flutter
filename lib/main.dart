import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(BottomMenuBar());
}

class BottomMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuBar(),
    );
  }
}

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 1000),
        curve: Curves.elasticInOut,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            activeColor: Colors.deepOrangeAccent,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text("Chat"),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.black
          ),
        ],
      ),
    );
  }
}
