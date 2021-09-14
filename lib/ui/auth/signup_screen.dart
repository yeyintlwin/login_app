import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/ui/auth/login_screen.dart';

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
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              foregroundColor: Colors.black,
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
                        const SizedBox(
                          height: 30,
                        ),
                        const TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            label: Text("Full Name"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text("Email"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            label: Text("Phone Number"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: Text("Password"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: Text("Confirm Password"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
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
                                              decoration:
                                                  TextDecoration.underline,
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
                                              decoration:
                                                  TextDecoration.underline,
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
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sign Up"),
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
          ),
        ],
      ),
    );
  }
}
