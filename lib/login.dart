import 'package:assignment1/auth.dart';
import 'package:assignment1/author/homepage.dart';
import 'package:assignment1/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // late String name;
  late String email;
  late String password;
  Authservice authservice = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
          
         
        
        child: Column(
          children: [
            SizedBox(
              height: 20,
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
                  authservice.login(email, password);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text("Login")),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not Have Account? '),
                  InkWell(
                      onTap: () async {
                        // authservice.login(email, password);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        "SignUp",
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
