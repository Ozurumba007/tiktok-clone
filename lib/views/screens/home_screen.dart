import 'package:flutter/material.dart';

import '../widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30), label: 'Search'),
          BottomNavigationBarItem(icon: CustomIcon(), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 30), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), label: 'Profile'),
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
