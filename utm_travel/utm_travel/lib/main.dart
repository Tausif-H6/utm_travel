import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:utm_travel/Screens/login.dart';
import 'package:utm_travel/Screens/signUp.dart';
import 'package:utm_travel/widgets/searchbar.dart';
import 'Screens/mainScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tousif Part',
      theme: ThemeData(
        fontFamily: "Brand Bold",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MainScreen.idScreen,
      routes: {
        MainScreen.idScreen: (context) => MainScreen(),
        LoginScreen.idScreen: (context) => LoginScreen(),
        SignUpScreen.idScreen: (context) => SignUpScreen(),
        Search.idScreen: (context) => Search(),
      },
    );
  }
}
