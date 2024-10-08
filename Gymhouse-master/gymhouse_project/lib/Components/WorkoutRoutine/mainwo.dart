import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/file_navigation.dart';
import 'package:gymhouse_project/Components/HomePages/homepage.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/goals.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/goals/home.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/lanjutan/latihanlanjutan.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/menengah/latihanmenengah.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/latihanpemula.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/planks.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/pushup.dart';
import 'package:gymhouse_project/utils/constant.dart';

class mainworkout extends StatelessWidget {
  const mainworkout({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF050522),
        elevation: 0,
        toolbarHeight: 100.0,
        title: Center(
          child: Text(
            "Workout Routine",
            style: mTitleStyleNameAppbar,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 255, 254, 254),
          ),
          iconSize: 25.0,
          onPressed: () {
                        Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BtnNavBar()));
          },
        ),
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView di sekitar Container
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start (left)
            children: [
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "CATAT PROGRESS PLAN \nATAU KEMAJUANMU",
                  style: mTitleStyleYoga1,
                ),
              ),
             SizedBox(height: 30,),
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "GOALS",
                  style: mTitleStyleYoga,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MenuContainer(
                title: 'Goals ',
                style: mEditProfile,

                color: Color.fromARGB(255, 70, 149, 151),
                route: Goalsnote(),
                imagePath: 'assets/images/gym1.png',
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "SESUAIKAN TINGKAT LATIHANMU",
                  style: mTitleStyleYoga1,
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "PEMULA",
                  style: mTitleStyleYoga,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MenuContainer(
                title: 'Latihan \nPemula',

                style: mEditDetailDataAnda,
                color: Color.fromARGB(255, 70, 149, 151),
                route: latihanpemula(),
                imagePath: 'assets/images/gym3.png',
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Dada \nPemula',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym2.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Lengan \nPemula',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym4.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Kaki \nPemula',

              //   style: mEditProfile,
              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Punggung \nPemula',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "MENENGAH",
                  style: mTitleStyleYoga,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // MenuContainer(
              //   title: 'Otot Perut \nMenengah',

              //   style: mEditDetailDataAnda,
              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PushupPage(),
              //   imagePath: 'assets/images/gym3.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              MenuContainer(
                title: 'Latihan \nMenengah',
                style: mEditProfile,

                color: Color.fromARGB(255, 70, 149, 151),
                route: latihanmenengah(),
                imagePath: 'assets/images/gym2.png',
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Lengan \nMenengah',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym4.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Kaki \nMenengah',

              //   style: mEditProfile,
              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Punggung \nMenengah',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment:
                    Alignment.centerLeft, // Align the text itself to the left
                child: Text(
                  "LANJUTAN",
                  style: mTitleStyleYoga,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //  MenuContainer(
              //   title: 'Otot Perut \nLanjutan',

              //   style: mEditDetailDataAnda,
              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PushupPage(),
              //   imagePath: 'assets/images/gym3.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Dada \nLanjutan',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym2.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              MenuContainer(
                title: 'Latihan \nLanjutan',
                style: mEditProfile,

                color: Color.fromARGB(255, 70, 149, 151),
                route: latihanlanjutan(),
                imagePath: 'assets/images/gym4.png',
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Kaki \nLanjutan',

              //   style: mEditProfile,
              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // MenuContainer(
              //   title: 'Punggung \nLanjutan',
              //   style: mEditProfile,

              //   color: Color.fromARGB(255, 70, 149, 151),
              //   route: PlanksPage(),
              //   imagePath: 'assets/images/gym5.png',
              // ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuContainer extends StatelessWidget {
  final String title;
  final Color color;
  final Widget route;
  final String imagePath;
  final TextStyle style;


  const MenuContainer(
      {required this.title,
      required this.color,
      required this.route,
      required this.imagePath,
      required this.style,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        height: 110.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 110.0,
              height: 90.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: style.copyWith(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
