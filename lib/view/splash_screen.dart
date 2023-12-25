import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentalhealthapp/view/bottomNavigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  // this function is using for changing screen to bottomNavigator

  changeScreen() async {
    await Future.delayed(Duration(seconds: 6));
    // print('This is me checkk ');
    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigatorScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Lottie.asset('images/lottieanimation.json'),
      ),
    );
  }
}
