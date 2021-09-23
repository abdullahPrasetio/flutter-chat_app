import 'package:chat_app/services/auth.dart';
import "package:flutter/material.dart";

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/bg.png"),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  AuthMethods().signInWithGoogle(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffDB4437),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign In With Google",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
