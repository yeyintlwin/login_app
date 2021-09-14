import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This screen will call from profile settings > change password.
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Make sure you remember your password.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: const Text("Current password"),
                            hintText: "Enter your curent password",
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.password),
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
                        TextField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: const Text("New password"),
                            hintText: "Enter your new password",
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
                        TextField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            label: const Text("Confirm password"),
                            hintText: "Enter your new password again",
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
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Change Password"),
                                style: ElevatedButton.styleFrom(
                                    minimumSize:
                                        const Size(double.infinity, 50)),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text("Cancel"),
                                style: OutlinedButton.styleFrom(
                                    minimumSize:
                                        const Size(double.infinity, 50)),

                                //style: ElevatedButton.styleFrom(
                                //  primary: Colors.white70, onPrimary: Colors.black38),
                              ),
                            ),
                          ],
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
