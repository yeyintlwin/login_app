import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Create New Password",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    "Your new password must be different from previous passwords.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text("New Password"),
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text("Confirm Password"),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Change Password")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
