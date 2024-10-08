import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/mainwo.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/menengah/pushupmenengah.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/selesaipemula.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/situp.dart';
import 'package:gymhouse_project/utils/constant.dart';

class situpsilang extends StatefulWidget {
  const situpsilang({Key? key}) : super(key: key);

  @override
  State<situpsilang> createState() => _situpsilangState();
}

class _situpsilangState extends State<situpsilang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0, // mengatur ketinggian
        title: Text(
          'Sit up silang',
          style: mTitleStyleNameAppbar2,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          iconSize: 25.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Image.asset('assets/images/Asset 10gym.png', height: 300, width: 350),
              //  SvgPicture.asset(
              //   'assets/images/pushup.png', // Ubah dengan path gambar yang sesuai
              //   width: 100.0,
              //   height: 100.0,
              // ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'x20',
              style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(150.0, 50.0) // Ubah ukuran sesuai kebutuhan Anda
                    ),
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 70, 149, 151)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                elevation: MaterialStateProperty.all<double>(5.0),
              ),
              child: Text('FINISH', style: mEditProfile,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        pushupmenengah(), // Ganti NextPage() dengan halaman tujuan navigasi
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

