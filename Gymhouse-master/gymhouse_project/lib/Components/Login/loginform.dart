import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/Admin/Homepage/btnnavbaradmin.dart';
import 'package:gymhouse_project/Components/HomePages/file_navigation.dart';
import 'package:gymhouse_project/Components/custom_surfix_icon.dart';
import 'package:gymhouse_project/Components/default_button_custom_color.dart';
import 'package:gymhouse_project/Screens/Register/registerscreens.dart';
import 'package:gymhouse_project/size_config.dart';
import 'package:gymhouse_project/utils/constant.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInformState createState() => _SignInformState();
}

class _SignInformState extends State<SignInform> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;
  String role = "";
  bool rolekah = false;

  void _loginUser() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )
        .then((value) async {
      if (value != null) {
        final FirebaseFirestore _firestore = FirebaseFirestore.instance;

        final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

        User? currentUser = _firebaseAuth.currentUser;
        String uid = currentUser!.uid;
        print('data uid $uid');

        if (currentUser != null) {
          String uid = currentUser.uid;

          DocumentSnapshot snapshot =
              await _firestore.collection('users').doc(uid).get();

          if (snapshot.exists) {
            Map<String, dynamic>? data =
                snapshot.data() as Map<String, dynamic>;

            if (data != null) {
              String roles = data['role'];
              setState(() {
                role = roles;
              });
            }
          }
        }
        try {
          if (role == 'admin') {
            print("Login Successful");

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BtnNavBarAdmin()));
          } else {
            print("Login Successful");

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BtnNavBar()));
          }
        } catch (e) {
          print('Error $e');
        }
      }
    }).catchError((error) {
      print("Error: ${error.toString()}");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text("Invalid email or password. Please try again."),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  void resetPassword() {
    FirebaseAuth.instance
        .sendPasswordResetEmail(email: _emailController.text)
        .then((value) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Reset"),
            content: Text(
                "Password reset email has been sent to your email address. Please check your inbox."),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }).catchError((error) {
      print("Error: ${error.toString()}");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Reset Failed"),
            content: Text(
                "Failed to send password reset email. Please try again later."),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: mTitleStyle,
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'info@example.com',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSurffixIcon(
              //   svgIcon: "assets/icons/Eye.svg",
              // ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            controller: _passwordController,
            obscureText: !_passwordVisible,
            style: mTitleStyle,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                child: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: resetPassword,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "Login",
            press: () {
              if (_formKey.currentState!.validate()) {
                _loginUser();
              }
              print('ini data role button $role');
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, registerscreens.routeName);
            },
            child: Text(
              "Don't have an account? Register",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}