import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Components/HomePages/profile/update_profilescreen.dart';
import 'package:gymhouse_project/Screens/Login/loginscreens.dart';
import 'package:gymhouse_project/utils/constant.dart';

class profile extends StatefulWidget {
  const profile({Key? key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  void _signOut(BuildContext context) {
    FirebaseAuth.instance.signOut().then((value) {
      print("Signed Out");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => loginscreens()),
          (Route<dynamic> route) => false);
      print("Ini logout ");
    }).catchError((error) {
      print("Error ${error.toString()}");
    });
  }

  String nama = "";
  String email = "";
  String image =
      "/data/user/0/com.gymhouse.project/cache/80154dbe-334d-4824-a567-7b76da0093df/FB_IMG_1689076570602.jpg";

  Future<void> getUser() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

    User? currentUser = _firebaseAuth.currentUser;

    if (currentUser != null) {
      String uid = currentUser.uid;

      DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();

      if (snapshot.exists) {
        Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>;

        if (data != null) {
          String namas = data['nama'];
          String emails = data['email'] ?? '';
          String images = data['image'] ??
              '/data/user/0/com.gymhouse.project/cache/80154dbe-334d-4824-a567-7b76da0093df/FB_IMG_1689076570602.jpg';

          setState(() {
            nama = namas;
            email = emails;
            image = images;
          });
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("My Profile", style: mTitleStyleMyprofile),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: 130,
                          height: 130,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                60), // Mengatur radius setengah dari lebar/tinggi untuk membuat bundar
                            child: Image.file(
                              File(image),
                              fit: BoxFit
                                  .cover, // Mengatur bagaimana gambar akan ditampilkan dalam kotak
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   width: 150.0,
                        //   child: Card(
                        //     child: Column(
                        //       children: [
                        //         Image.file(File(image)),
                        //         SizedBox(height: 8.0),
                        //         // Text(
                        //         //   name,
                        //         //   style: TextStyle(
                        //         //     fontSize: 16.0,
                        //         //     fontWeight: FontWeight.bold,
                        //         //   ),
                        //         // ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          nama,
                          style: mTitleStyleMyprofilepage1,
                        ),
                        Text(
                          email,
                          style: mTitleStyleMyprofilepage3,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UpdateProfileScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text('Edit Profile', style: mEditProfile),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Divider(),
                        const SizedBox(
                          height: 150,
                        ),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text('News', style: mEditProfile),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              _signOut(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF050522),
                            ),
                            child: Text('Logout', style: mEditProfile),
                          ),
                        ),

                        // Konten halaman profil di sini
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}