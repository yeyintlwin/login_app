import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              foregroundColor: Colors.black,
            ),
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
                            "Forget Password",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Enter the email associated with your account and we'll send an email with 4 digit code to reset your password.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              label: Text("Email"),
                              hintText: "Enter your email",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Reset Password"),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
