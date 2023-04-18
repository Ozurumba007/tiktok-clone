import 'package:flutter/material.dart';

import '../widgets/custom_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
