import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Register/registerform.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';
// import 'package:simple_shadow/simple_shadow.dart';

class registercomponent extends StatefulWidget {
  @override
  _registercomponent createState() => _registercomponent();
}

class _registercomponent extends State<registercomponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hello...",
                      style: mTitleStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 70),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Register",
                      style: mTitleStyleLogin,
                    ),
                  ),
                ),
                SizedBox(height: 180),
                SignUpform(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
