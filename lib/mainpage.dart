import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trackifyy/menu.dart';
import 'package:trackifyy/soon.dart';
import 'package:trackifyy/splash.dart';
class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context,snapshot){
          if(snapshot.hasData){
            return Menu();
          }else{
            return Splash();
          }
    },
      ),
    );
  }
}
