import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/mainwo.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/menengah/peregangankobra.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/selesaipemula.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/situp.dart';
import 'package:gymhouse_project/utils/constant.dart';

class jumpingjackmenengah extends StatefulWidget {
  const jumpingjackmenengah({Key? key}) : super(key: key);

  @override
  State<jumpingjackmenengah> createState() => _jumpingjackmenengahState();
}

class _jumpingjackmenengahState extends State<jumpingjackmenengah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0, // mengatur ketinggian
        title: Text('Jumping Jack',
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
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(30.0),
              child: Image.asset('assets/images/jumping jack (1).png')
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
            'x15',
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
                      peregangankobra(), // Ganti NextPage() dengan halaman tujuan navigasi
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
