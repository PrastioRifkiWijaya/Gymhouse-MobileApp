import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/Screens/Register/registerscreens.dart';
// import 'package:gymhouse_project/Components/default_button_custom_color.dart';
import 'package:gymhouse_project/utils/constant.dart';

class welcomecomponent extends StatefulWidget {
  @override
  _welcomecomponentState createState() => _welcomecomponentState();
}

class _welcomecomponentState extends State<welcomecomponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60),
            Text(
              "Gymhouse",
              style: mTitleStyleGymhouse,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            SvgPicture.asset(
              "assets/images/Gym-amico 1.svg",
              height: 200,
            ),
            SizedBox(height: 80),
            Text(
              "Welcome",
              style: mTitleStyleWelcome,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(17.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, registerscreens.routeName);
                },
                child: Column(
                  children: [
                    Text(
                      'Create Account',
                      textAlign: TextAlign.center,
                      style: mTitleStyleCreateAccount,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(17.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, loginscreens.routeName);
                },
                child: Column(
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: mTitleStyleCreateAccount,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
