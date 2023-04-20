import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trackifyy/detail.dart';
import 'package:trackifyy/homepage.dart';
import 'package:trackifyy/mainpage.dart';
import 'package:trackifyy/menu.dart';
import 'package:trackifyy/signup.dart';
import 'package:trackifyy/splash.dart';
import 'firebase_options.dart';
import 'soon.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
      routes: {
        'splash': (context) => Splash(),
        'soon': (context) => LoginPage(),
        'signup': (context) => RegPage(),
        'menu': (context) => Menu(),
        'detail': (context) =>IoTDetailsScreen(),
      },
    );
  }
}

