import 'package:flutter/material.dart';
import 'package:ui2/constant.dart';
import 'package:ui2/screens/exploreScreen.dart';
import 'package:ui2/screens/homeScreen.dart';
import 'package:ui2/screens/myScreen.dart';
import 'package:ui2/screens/searchScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List Page = [
    const HomeScreen(),
    const Explore(),
    const SearchPage(),
    const Mypage(),
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          onTap: onPressed,
          currentIndex: selectedIndex,
          showUnselectedLabels: false,
          selectedItemColor: kMainColor,
          unselectedItemColor: kTextColorsmall,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: 'Menu'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: 'Search'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'My screen'),
          ]),
    );
  }
}
