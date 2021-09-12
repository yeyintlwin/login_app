import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/ui/auth/login_screen.dart';
import 'package:login_app/ui/widgets/text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: const Text("Sign Up"),
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      label: Text("Full Name"),
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text("Email"),
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Phone Number"),
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text("Password"),
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      label: Text("Confirm Password"),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Expanded(
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                children: [
                                  TextSpan(
                                      text: "I agree to Appen's ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                  TextSpan(
                                      text: "Terms of Service ",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        decoration: TextDecoration.underline,
                                      )),
                                  TextSpan(
                                      text: "and ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                  TextSpan(
                                      text: "Privacy Policy",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        decoration: TextDecoration.underline,
                                      )),
                                  TextSpan(
                                      text: ".",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Sign Up")),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Have an Account? ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Sign In",
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
                                          const LoginScreen()));
                            }),
                    ]),
                  )
                  /**
         * Full Name          
         * Email
         * Phone Numbers
         * Password
         * Confirm Password
         * CheckBox > Privacy + Tearm of Service
         * SignUp
         **/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
