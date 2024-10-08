import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/homepage.dart';
// import 'package:gymhouse_project/Components/HomePages/profile.dart';
import 'package:gymhouse_project/Components/Membership/membershipform.dart';
import 'package:gymhouse_project/Components/WorkoutRoutine/mainwo.dart';

class BtnNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BtnNavBar> {
  int _currentIndex = 1;
  late PageController _pageController;
  
 @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }
  
  List<Widget> _pages = [
   
    // profile(),
    membership(),
    homepage(),
    mainworkout(),
  ];

 

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050522),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: _pages,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60, // Tinggi Bottom Navigation Bar yang diperpanjang
                decoration: const BoxDecoration(
                  color: Color(0xFF050522),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          0,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(
                        Icons.card_membership,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(
                        Icons.home_filled,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          2,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Image.asset(
                        'assets/icons/icon _gym weights bold_.png',
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
