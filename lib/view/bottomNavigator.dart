import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthapp/view/career_education.dart';
import 'package:mentalhealthapp/view/home_screen.dart';
import 'package:mentalhealthapp/view/messagingScreen.dart';
import 'package:mentalhealthapp/view/profile_screen.dart';

class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({super.key});

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {

  int selectedRoute = 0;
  List screens = [
    HomePage(),
    CareerEducation(),
    MessagingScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        // currentIndex: selectedRoute,
        backgroundColor: Colors.grey.shade300,
        color: Colors.blue.shade700,
        animationDuration: Duration(milliseconds: 700),
        onTap: (val) {
          setState(() {
            selectedRoute = val;
          });
        },
        items: [
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.dashboard_rounded,color: Colors.white,),
          Icon(Icons.mail,color: Colors.white,),
          Icon(Icons.person,color: Colors.white,)
        ],
      ),
      body: screens[selectedRoute],
    );
  }
}
