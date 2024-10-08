import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Sambutan/sambutancomponent.dart';
import 'package:gymhouse_project/size_config.dart';

class onboarding_screens extends StatelessWidget {
  static String routeName = "/onboarding_";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: onboardingscreen(),
    );
  }
}