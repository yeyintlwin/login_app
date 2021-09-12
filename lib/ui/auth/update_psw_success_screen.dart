import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordUpdatedSuccessScreen extends StatefulWidget {
  const PasswordUpdatedSuccessScreen({Key? key}) : super(key: key);

  @override
  _PasswordUpdatedSuccessScreenState createState() =>
      _PasswordUpdatedSuccessScreenState();
}

class _PasswordUpdatedSuccessScreenState
    extends State<PasswordUpdatedSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('images/success.png'),
                    width: 120,
                    height: 120,
                  ),
                  const Text(
                    "Password Updated!",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Your password has been changed successfully, Use your new password to login.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Login now")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
