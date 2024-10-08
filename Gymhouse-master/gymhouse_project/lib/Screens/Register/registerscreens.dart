import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Register/registercomponent.dart';
import 'package:gymhouse_project/size_config.dart';


class registerscreens extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: registercomponent(),
    );
  }
}