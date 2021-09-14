import 'package:flutter/material.dart';
import 'package:login_app/ui/auth/change_psw_screen.dart';
import 'package:login_app/ui/auth/create_psw_screen.dart';
import 'package:login_app/ui/auth/forget_psw_screen.dart';
import 'package:login_app/ui/auth/login_screen.dart';
import 'package:login_app/ui/auth/signup_screen.dart';
import 'package:login_app/ui/auth/signup_success_sreen.dart';
import 'package:login_app/ui/auth/update_psw_success_screen.dart';
import 'package:login_app/ui/auth/verify_screen.dart';

class ActivitiesListScreen extends StatefulWidget {
  const ActivitiesListScreen({Key? key}) : super(key: key);

  @override
  _ActivitiesListScreenState createState() => _ActivitiesListScreenState();
}

class _ActivitiesListScreenState extends State<ActivitiesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text(
                "Login App",
                style: TextStyle(color: Colors.amber),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text("Login Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
                          },
                          child: const Text("Sign Up Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChangePasswordScreen()));
                          },
                          child: const Text("Change Password Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreatePasswordScreen()));
                          },
                          child: const Text("Create Password Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPasswordScreen()));
                          },
                          child: const Text("Forget Password Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpSuccessScreen()));
                          },
                          child: const Text("Sign Up Success Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PasswordUpdatedSuccessScreen()));
                          },
                          child: const Text("Psw Upd Success Screen"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VerifyScreen()));
                          },
                          child: const Text("Verify Screen"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
