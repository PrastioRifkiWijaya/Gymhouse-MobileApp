// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Sambutan/sambutancomponent.dart';
// import 'package:gymhouse_project/Screens/Admin/Login/loginadminscreen.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/Screens/Register/registerscreens.dart';
import 'package:gymhouse_project/Screens/Sambutan/sambutanscreens.dart';
import 'package:gymhouse_project/Screens/Splash/splashscreens.dart';
import 'package:gymhouse_project/Screens/Welcome/welcomescreen.dart';

final Map<String, WidgetBuilder> routes = {
  welcomescreens.routeName: (context) => welcomescreens(),
  loginscreens.routeName: (context) => loginscreens(),
  registerscreens.routeName:(context) => registerscreens(),
  onboarding_screens.routeName:(context) => onboardingscreen(),
  SplashScreens.routeName:(context) => SplashScreens(),
  // loginadminscreens.routeName:(context) => loginadminscreens()
};
