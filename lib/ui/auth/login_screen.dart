import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:login_app/ui/auth/forget_psw_screen.dart';
import 'package:login_app/ui/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // add: Background Image
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              foregroundColor: Colors.black,
            ),
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text("Email"),
                            hintText: "Enter your email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: const Text("Password"),
                            hintText: "Enter your password",
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: RichText(
                            text: TextSpan(
                              text: "Forgot Password?",
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgetPasswordScreen()));
                                },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Login"),
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 50)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            TextSpan(
                              text: "Sign Up",
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupScreen()));
                                },
                            )
                          ]),
                        )
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
