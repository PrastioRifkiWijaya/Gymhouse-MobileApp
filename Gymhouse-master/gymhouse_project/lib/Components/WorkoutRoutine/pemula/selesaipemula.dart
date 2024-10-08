import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/mainwo.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/latihanpemula.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/situp.dart';
import 'package:gymhouse_project/utils/constant.dart';

class selesaipemula extends StatefulWidget {
  const selesaipemula({Key? key}) : super(key: key);

  @override
  State<selesaipemula> createState() => _selesaipemulaState();
}

class _selesaipemulaState extends State<selesaipemula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0, // mengatur ketinggian
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.asset('assets/images/selesai.png',)
              //  SvgPicture.asset(
              //   'assets/images/pushup.png', // Ubah dengan path gambar yang sesuai
              //   width: 100.0,
              //   height: 100.0,
              // ),
              ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                  Size(300.0, 70.0) // Ubah ukuran sesuai kebutuhan Anda
                  ),
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 70, 149, 151)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              elevation: MaterialStateProperty.all<double>(5.0),
            ),
            child: Text('SELESAIKAN LATIHAN', style: mEditProfile,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      mainworkout(), // Ganti NextPage() dengan halaman tujuan navigasi
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Halaman tujuan navigasi (contoh)
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Halaman selanjutnya'),
      ),
    );
  }
}
