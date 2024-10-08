import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/profile/profile.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/goals/home.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Subscription/subscription.dart';
import '../WorkoutRoutine/mainwo.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF050522),
        elevation: 0,
        toolbarHeight: 100.0,
        title: Text(
          "Gymhouse",
          style: mTitleStyleNameAppbar,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      //enableDrag: false,
                      //isDismissible: false,
                      isScrollControlled: true, //supaya bisa di scroll
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => Goalsnote());
                },
                child: Container(
  margin: EdgeInsets.only(left: 10, right: 10),
  padding: EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Color(0xFF398AB9),
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Row( // Use Row to display text and image horizontally
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(width: 10), // Add some spacing between the text and the image
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'GOALS',
            textAlign: TextAlign.start,
            style: mTitleStyleGymhouse,
          ),
          SizedBox(height: 8), // Add some vertical spacing between title and text
          Text(
            'Buat daftar pencapaian \nWorkoutmu disini ', // Add your desired text here
            textAlign: TextAlign.start,
            style: mTitleStyleGymhouse2
          ),
        ],
      ),
            SizedBox(
        width: 20,
      ),
      Image.asset(
        'assets/images/goalsin2.png', // Replace 'your_image.svg' with the path to your SVG image
        width: 91,
        height: 95,
        // You can customize the width and height of the SVG image as per your requirement
      ),
    ],
  ),
)
,

              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      //enableDrag: false,
                      //isDismissible: false,
                      isScrollControlled: true, //supaya bisa di scroll
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => mainworkout());
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF398AB9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    // Use Column instead of Row
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'WORKOUT ROUTINE',
                        textAlign: TextAlign.start,
                        style: mTitleStyleGymhouse1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lakukan olahraga secara teratur \nagar mendapatkan hasil maksimalmu!',
                        textAlign: TextAlign.center,
                        style: mTitleStyleGymhouse2,
                      ),
                      SizedBox(
                          height:
                              10), // Add some vertical spacing between text and image
                      Image.asset(
                        'assets/images/gym1.png', // Replace 'your_image.svg' with the path to your SVG image
                        width: 170,
                        height: 170,
                        // You can customize the width and height of the image as per your requirement
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      //enableDrag: false,
                      //isDismissible: false,
                      isScrollControlled: true, //supaya bisa di scroll
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => buildSheet(context));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF398AB9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    // Use Column instead of Row
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'MEMBERSHIP',
                        textAlign: TextAlign.center,
                        style: mTitleStyleGymhouse,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Gabung dengan kami sekarang juga \ndan nikmati keuntungannya!',
                        textAlign: TextAlign.center,
                        style: mTitleStyleGymhouse2,
                      ),
                      Image.asset(
                        'assets/images/gymprem.png', // Replace 'your_image.svg' with the path to your SVG image
                        width: 250,
                        height: 250,
                        // You can customize the width and height of the image as per your requirement
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
