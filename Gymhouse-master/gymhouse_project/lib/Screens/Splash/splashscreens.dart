import 'package:flutter/material.dart';
// import 'package:gymhouse_project/Components/Login/logincomponent.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/splash.dart';

class SplashScreens extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashScreen(),
    );
  }
}