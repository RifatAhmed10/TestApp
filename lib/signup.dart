import 'package:assignment1/auth.dart';
import 'package:assignment1/author/homepage.dart';
import 'package:assignment1/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String name;
  late String email;
  late String password;
  Authservice authservice = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Signup"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Your Name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: "example@gmail.com",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "abcd.....",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  authservice.signup(name, email, password);
                   Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                },
                child: Text("SignUp")),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have Account? '),
                  InkWell(
                      onTap: () {
                         Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
