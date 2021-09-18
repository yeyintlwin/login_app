import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/ui/auth/login_screen.dart';
import 'package:login_app/ui/utils/validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:login_app/ui/widgets/password_strangth.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false;
  bool _isObscure = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                      child: Form(
                        key: _formKey,
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
                            const SizedBox(height: 30),
                            TextFormField(
                              controller: _userNameController,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                label: Text("Full Name"),
                                hintText: "Enter your name",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person),
                              ),
                              validator: (value) =>
                                  InputValidators.usernameValidator(value!),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _emailAddressController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                label: Text("Email"),
                                hintText: "Enter your email",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.mail),
                              ),
                              validator: (value) =>
                                  InputValidators.emailAddressValidator(value!),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _phoneNumberController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                label: Text("Phone Number"),
                                hintText: "Enter your number",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.phone_android),
                              ),
                              validator: (value) =>
                                  InputValidators.phoneValidator(value!),
                            ),
                            const SizedBox(height: 20),
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
                            // const SizedBox(height: 10),
                            // PasswordStrengthWidget(
                            //   controller: _passwordController,
                            // ),

                            // const SizedBox(height: 10),
                            // FlutterPwValidator(
                            //   controller: _passwordController,
                            //   height: 100,
                            //   onSuccess: () {},
                            //   minLength: 8,
                            //   width: 400,
                            //   uppercaseCharCount: 2,
                            //   numericCharCount: 3,
                            //   specialCharCount: 1,
                            // ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: _isObscure,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                label: const Text("Confirm Password"),
                                hintText: "Enter your password again",
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
                                  InputValidators.confirmPasswordValidator(
                                      _passwordController.text, value!),
                            ),
                            const SizedBox(height: 20),
                            Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: _isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        }),
                                    Expanded(
                                      child: RichText(
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        text: const TextSpan(
                                          style: TextStyle(fontSize: 12),
                                          children: [
                                            TextSpan(
                                              text: "I agree to Appen's ",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Terms of Service ",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "and ",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "Privacy Policy",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ".",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  //
                                }
                              },
                              child: const Text("Sign Up"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 50)),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              text: TextSpan(children: [
                                const TextSpan(
                                  text: "Have an Account? ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
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
                                                const LoginScreen(),
                                          ),
                                        );
                                      }),
                              ]),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
