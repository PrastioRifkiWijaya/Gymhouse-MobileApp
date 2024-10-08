import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/menengah/Sentuhtumit.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/wallsitpemula.dart';
import 'package:gymhouse_project/utils/constant.dart';

class putarlengan extends StatefulWidget {
  @override
  _putarlenganState createState() => _putarlenganState();
}

class _putarlenganState extends State<putarlengan> {
  static const maxSeconds = 30;
  int seconds = maxSeconds;
  Timer? timer;
  void resetTimer() => setState(() => setState(() => seconds = maxSeconds));

  void startTime({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        stopTimer(reset: false);
      }
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0, // mengatur ketinggian
        title: Text('Putar Lengan',
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
            body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
                //         Container(
                // padding: EdgeInsets.all(30.0),
                // child: Image.asset('assets/images/Asset 7workout arm.png')
                // //  SvgPicture.asset(
                // //   'assets/images/pushup.png', // Ubah dengan path gambar yang sesuai
                // //   width: 100.0,
                // //   height: 100.0,
                // // ),
                // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              //   child: SvgPicture.asset(
              //     'assets/images/Nomer_1gym.svg', // Ganti dengan path gambar SVG yang sesuai
              //     width: 200,
              //     height: 200,
              //   ),
              // ),
              SizedBox(height: 120),
              buildTimer(),
              SizedBox(
                  height:
                      230), // Atur tinggi sesuai kebutuhan untuk memberi jarak antara buildTimer() dan buildButtons()
              buildButtons(),
              SizedBox(
                height: 20,
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
                          sentuhtumit(), // Ganti NextPage() dengan halaman tujuan navigasi
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget buildButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = seconds == maxSeconds || seconds == 0;
    return isRunning || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                text: isRunning ? 'Pause' : 'Resume',
                backgroundColor: Color.fromARGB(255, 70, 149, 151),
                horizontalPadding: 160,
                verticalPadding: 80,
                onClicked: () {
                  if (isRunning) {
                    stopTimer(reset: false);
                  } else {
                    startTime(reset: false);
                  }
                },
              ),
              SizedBox(
                width: 20,
              ),
              ButtonWidget(
                  text: 'Cancel',
                  backgroundColor: Color.fromARGB(255, 70, 149, 151),
                  horizontalPadding: 160,
                  verticalPadding: 80,
                  onClicked: () {
                    stopTimer();
                  })
            ],
          )
        : ButtonWidget(
            text: 'Start Timer!',
            horizontalPadding: 250,
            verticalPadding: 80,
            backgroundColor: const Color.fromARGB(255, 70, 149, 151),
            onClicked: () {
              startTime();
            },
          );
  }

  Widget buildTime() {
    if (seconds == 0) {
      return Icon(Icons.done, color: Colors.green, size: 122);
    }
    return Text(
      '$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontSize: 80,
      ),
    );
  }

  Widget buildTimer() => SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1 - seconds / maxSeconds,
              valueColor:
                  AlwaysStoppedAnimation(Color.fromARGB(255, 11, 84, 231)),
              strokeWidth: 12,
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            Center(
              child: buildTime(),
            )
          ],
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onClicked;
  final double horizontalPadding;
  final double verticalPadding;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.onClicked,
    required this.horizontalPadding,
    required this.verticalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Atur radius border
          ),
          minimumSize:
              Size(horizontalPadding, verticalPadding), // Atur ukuran tetap
          primary: backgroundColor,
        ),
        child: Text(
          text,
          style: mTitleStyleNameAppbar,
        ),
        onPressed: onClicked,
      );
}
