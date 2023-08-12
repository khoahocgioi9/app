import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:user/screens/loginScreen.dart';
import 'package:user/screens/registerScreen.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi Rider App',
      theme: ThemeData(
        fontFamily: "Brand Bold",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: loginScreen.idScreen,
      routes: {
        registerScreen.idScreen: (context) => registerScreen(),
        loginScreen.idScreen: (context) => loginScreen(),
        MyHomePage.idScreen: (context) => MyHomePage(
              title: "Home",
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
