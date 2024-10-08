import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Controllers/user_controller.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  TextEditingController id = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final userController _userController = userController();
  final ImagePicker _imagePicker = ImagePicker();

  File? _imageFile;

  String imagePath = '';

  Future<void> _pickImage() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        imagePath = pickedFile.path;

        print("image $_imageFile");
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<void> getUser() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

    User? currentUser = _firebaseAuth.currentUser;

    if (currentUser != null) {
      print('data user $currentUser');
      String uid = currentUser.uid;

      DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(uid).get();

      if (snapshot.exists) {
        Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>;

        if (data != null) {
          print('ini data ${data['email']}');
          String idUsers = uid;
          String emails = data['email'] ?? '';
          String namas = data['nama'] ?? '';

          setState(() {
            id.text = idUsers;
            email.text = emails;
            nama.text = namas;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Detail Data Anda", style: mEditProfile,),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: _imageFile != null
                      ? Image.file(
                          File(_imageFile!.path),
                          fit: BoxFit.cover,
                        )
                      : CachedNetworkImage(
                          imageUrl:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png',
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Icon(
                            Icons.error,
                            size: 100,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
              Visibility(
                visible: false,
                child: TextField(
                  controller: id,
                  decoration: InputDecoration(
                    labelText: 'id',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  filled: true,
                  fillColor: Colors.white,
                ),
                enabled: false,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  String userId = id.text;
                  String newId = id.text;
                  String newNama = nama.text;
                  String newEmail = email.text;
                  String newImage = imagePath;
                  print('ini id $userId');
                  print('ini image $newImage');

                  _userController.editData(
                      userId, newId, newNama, newEmail, newImage);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Sukses'),
                        content: Text('Data berhasil disimpan'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF050522), // Mengatur warna latar belakang tombol
                  textStyle: mEditProfile,
                  padding: EdgeInsets.symmetric(
                      horizontal: 30, vertical: 14), // Mengatur padding tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Mengatur border radius tombol
                  ),
                ),
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
