import 'package:firebase_auth/firebase_auth.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/utils/constant.dart';
import 'package:video_player/video_player.dart';

class MembershipPlusForm extends StatefulWidget {
  MembershipPlusForm({super.key});

  @override
  _MembershipPlusFormState createState() => _MembershipPlusFormState();
}

class _MembershipPlusFormState extends State<MembershipPlusForm> {
  late FlickManager flickManager1;
  late FlickManager flickManager2;
  late FlickManager flickManager3;
  late FlickManager flickManager4;

  @override
  void initState() {
    super.initState();
    flickManager1 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://cloud.punisher.eu.org/1:/10_min_Morning_Yoga_Stretch_for_Beginners_Energy_Boost__T41mYCmtWls_136.mp4'),
      ),
    );
    flickManager2 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://cloud.punisher.eu.org/1:/CARDIO%20WORKOUT%20FOR%20BEGINNERS%20From%20Home%20In%2010%20Minutes%20_%20Lockdown%20Workout%20No%20Equipment%20_%20HealthifyMe.mp4'),
      ),
    );
    flickManager3 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://vault7.my.id/2:/zumba.mp4'),
      ),
    );
    flickManager4 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            'https://vault7.my.id/2:/hiit_workout.mp4'),
      ),
    );
  }

  @override
  void dispose() {
    flickManager1.dispose();
    flickManager2.dispose();
    flickManager3.dispose();
    flickManager4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " Start Your\n Exclusive\n Training here",
                    style: mTitleStyleMembership,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " Yoga Lesson",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager1),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " Cardio Workout Lessons",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager2),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " Zumba Lesson",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager3),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " High Intensity Workout ",
                    style: mTitleStyleYoga,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: FlickVideoPlayer(flickManager: flickManager4),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
