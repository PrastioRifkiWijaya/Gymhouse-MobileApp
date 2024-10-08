import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Welcome/welcomecomponent.dart';
import 'package:gymhouse_project/size_config.dart';

class welcomescreens extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: welcomecomponent(),
    );
  }
}