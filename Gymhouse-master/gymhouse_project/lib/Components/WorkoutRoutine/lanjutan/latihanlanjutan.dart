import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/lanjutan/LoncatBintang.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/mainwo.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/menengah/putarlengan.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/squatpemula.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/planks.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/pemula/pushup.dart';
import 'package:gymhouse_project/utils/constant.dart';

class latihanlanjutan extends StatelessWidget {
  const latihanlanjutan({Key? key});

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
            "Latihan Lanjutan",
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
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => mainworkout()));
          },
        ),
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              MenuContainer(
                title: 'Loncat Bintang',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym4.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Peregangan \nBahu',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Sentuh Tumit \nx30',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym3.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Puntir Russia \nx45',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym3.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Crunch Sepeda \nx25',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/Asset 10gym.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Sit Up V \nx25',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/Asset 10gym.png',
              ),
             SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Peregangan \nDada',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Push Up \nx25',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym4.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Plank \nKanan Kiri',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Jumping Jack \nx25',
                style: mEditProfile,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym4.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Peregangan \nKobra',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Peregangan \nTulang Kiri',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 20,
              ),
              MenuContainer(
                title: 'Peregangan \nTulang Kanan',
                style: mEditProfile2,
                color: Color.fromARGB(255, 70, 149, 151),
                imagePath: 'assets/images/gym5.png',
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to a new screen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loncatbintang(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      kPrimaryColor, // Change this to the desired background color
                  // You can also customize other properties like text color, padding, etc.
                  // For example:
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text(
                  'Mulai',
                  style: mTitleStyleNameAppbar,
                ),
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
  final Color color; // Tambahkan parameter route
  final String imagePath;
  final TextStyle style;

  const MenuContainer({
    required this.title,
    required this.color, // Tambahkan parameter route
    required this.imagePath,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   // Navigasi ke halaman yang ditentukan saat kontainer ditekan
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => route),
      //   );
      // },
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
              width: 100.0,
              height: 80.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start, // Menentukan teks berada di tengah
            ),
          ],
        ),
      ),
    );
  }
}
