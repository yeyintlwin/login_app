import 'package:flutter/material.dart';

class SignUpSuccessScreen extends StatefulWidget {
  const SignUpSuccessScreen({Key? key}) : super(key: key);

  @override
  _SignUpSuccessScreenState createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends State<SignUpSuccessScreen> {
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
                    image: AssetImage("images/success.png"),
                    width: 120,
                    height: 120,
                  ),
                  const Text(
                    "Done!",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Everything is ready now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Let's Begin")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
