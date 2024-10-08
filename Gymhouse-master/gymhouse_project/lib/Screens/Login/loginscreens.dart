import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Login/logincomponent.dart';
import 'package:gymhouse_project/size_config.dart';

class loginscreens extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: logincomponent(),
    );
  }
}