import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gymhouse_project/Components/HomePages/file_navigation.dart';
import 'package:gymhouse_project/Screens/Splash/splashscreens.dart';
// import 'Components/Sambutan/sambutancomponent.dart';
import 'package:gymhouse_project/routes.dart';
import 'package:gymhouse_project/theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        // Menampilkan tampilan loading jika masih menunggu status otentikasi
        return CircularProgressIndicator();
      } else {
        if (snapshot.hasData) {
          return MaterialApp(
            title: "Gymhouse",
            theme: theme(),
            home: BtnNavBar(),
            debugShowCheckedModeBanner: false,
          );
        } else {
          return MaterialApp(
            title: "Gymhouse",
            theme: theme(),
            initialRoute: SplashScreens.routeName,
            routes: routes,
            debugShowCheckedModeBanner: false,
          );
        }
      }
    },
  ));
}
