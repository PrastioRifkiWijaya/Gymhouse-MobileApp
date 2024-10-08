  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';
  import 'package:flutter/material.dart';
  import 'package:gymhouse_project/Components/custom_surfix_icon.dart';
  import 'package:gymhouse_project/Components/default_button_custom_color.dart';
  import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
  import 'package:gymhouse_project/size_config.dart';
  import 'package:gymhouse_project/utils/constant.dart';

  class SignUpform extends StatefulWidget {
    @override
    _SignUpform createState() => _SignUpform();
  }

  class _SignUpform extends State<SignUpform> {
    final _formKey = GlobalKey<FormState>();
    String? email_address;
    String? password;
    String? nama;
    String? id_trainer;

    // const SignUpform({
    //   required this.email_address,

    // }),
    TextEditingController txtEmailAddress = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    TextEditingController txtnama = TextEditingController();
    FocusNode focusNode = new FocusNode();

  



 void _registerUser() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: txtEmailAddress.text, password: txtPassword.text)
        .then((value) {
      print("Created New Account");
      
    FirebaseFirestore firestore = FirebaseFirestore.instance;
      // Simpan data pengguna ke Firestore
firestore.collection('users').add({
        'email': txtEmailAddress.text,
        'password': txtPassword.text,
      }).then((docRef) {
        print('Document ID: ${docRef.id}');
      }).catchError((error) {
        print('Failed to save data: $error');
      });
              Navigator.pushNamed(context, loginscreens.routeName);
    }).catchError((error) {
      print("Error ${error.toString()}");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Register Failed"),
            content: Text("Invalid email, Please try again."),
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


    @override
    Widget build(BuildContext context) {
      return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailaddress(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPassword(),
            SizedBox(height: getProportionateScreenHeight(20)),
            // buildConfirmPassword(),
            // SizedBox(height: getProportionateScreenHeight(20)),
            // Row(
            //   children: [
            //     Checkbox(
            //         value: remember,
            //         onChanged: (value) {
            //           setState(() {
            //             remember = value;
            //           });
            //         }),
            //     Text("Remember me"),
            //     Spacer(),
            //     GestureDetector(
            //       onTap: () {},
            //       child: Text(
            //         "Forgot password ?",
            //         style: TextStyle(decoration: TextDecoration.underline),
            //       ),
            //     )
            //   ],
            // ),
            DefaultButtonCustomeColor(
              color: kPrimaryColor,
              text: "Register",
              press : () {
                if (_formKey.currentState != null &&
                    _formKey.currentState!.validate()) {
                  // Validasi sukses, lanjutkan dengan proses login
                  _registerUser();
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            //MENGAKTIFKAN FUNGSI KLIK PADA TEKS AGAR BISA KE LAYOUT SELANJUTNYA, GUNAKAN ON TAP
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, loginscreens.routeName);
              },
              //INI UNTUK MEMANGGIL KE LAYOUT SELANJUTNYA
              child: Text(
                "Already have account? Login",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      );
    }

    TextFormField buildEmailaddress() {
      return TextFormField(
        controller: txtEmailAddress,
        keyboardType: TextInputType.emailAddress,
        style: mTitleStyle2,
        decoration: InputDecoration(
          labelText: 'Email address',
          hintText: 'info@example.com',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(
          //   svgIcon: "assets/icons/Eye.svg",
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
      );
    }

    TextFormField buildPassword() {
      return TextFormField(
        controller: txtPassword,
        obscureText: true,
        style: mTitleStyle2,
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Masukkan password anda',
            labelStyle: TextStyle(
                color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Eye.svg",
            )),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters long';
          }
          return null;
        },
      );
    }

    // TextFormField buildConfirmPassword() {
    //   return TextFormField(
    //     controller: txtConfirmPassword,
    //     obscureText: true,
    //     style: mTitleStyle2,
    //     decoration: InputDecoration(
    //         labelText: 'Password',
    //         hintText: 'Masukkan kembali password anda',
    //         labelStyle: TextStyle(
    //             color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
    //         floatingLabelBehavior: FloatingLabelBehavior.always,
    //         suffixIcon: CustomSurffixIcon(
    //           svgIcon: "assets/icons/Eye.svg",
    //         )),
    //   );
    // }
  }
