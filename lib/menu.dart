import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Device'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Device Name'),

              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Device ID'),

              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'detail');
                },

                child: Container(
                  height: 34,
                  width: 246,
                  decoration: BoxDecoration(
                    color: const Color(0xff35B2E6),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),
              ),
              Text('signed in as ' + user.email!),
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();

              },
                color: const Color(0xff35B2E6),
                child: Text('sign out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


