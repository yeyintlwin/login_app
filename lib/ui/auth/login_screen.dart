import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:login_app/ui/auth/forget_psw_screen.dart';
import 'package:login_app/ui/auth/signup_screen.dart';
import 'package:login_app/ui/utils/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    child: Form(
                      key: _formKey,
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
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              label: Text("Email"),
                              hintText: "Enter your email",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) =>
                                InputValidators.emailAddressValidator(value!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passwordController,
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
                            validator: (value) =>
                                InputValidators.passwordValidator(value!),
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
                                            const ForgetPasswordScreen(),
                                      ),
                                    );
                                  },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                String email = _emailController.text;
                                String password = _passwordController.text;
                                var json = jsonDecode(
                                    "{\"email\": \"$email\", \"password\": \"$password\"}");

                                print(json);

                                // make req
                              }
                            },
                            child: const Text("Login"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                            ),
                          ),
                          const SizedBox(height: 20),
                          RichText(
                            text: TextSpan(children: [
                              const TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
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
                                            const SignupScreen(),
                                      ),
                                    );
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
            ),
          )
        ],
      ),
    );
  }
}
