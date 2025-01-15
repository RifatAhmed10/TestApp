import 'package:assignment1/auth.dart';
import 'package:assignment1/login.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Authservice authservice = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('HomePage'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text('hello'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  //Navigator.pushNamed(context, '/login');
                  authservice.signout();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('Sign Out'),
              ),
            ],
          ),
        ));
  }
}
