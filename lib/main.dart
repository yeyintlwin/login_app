import 'package:flutter/material.dart';
import 'package:login_app/ui/auth/change_psw_screen.dart';
import 'package:login_app/ui/auth/create_psw_screen.dart';
import 'package:login_app/ui/auth/forget_psw_screen.dart';
import 'package:login_app/ui/auth/login_screen.dart';
import 'package:login_app/ui/auth/signup_screen.dart';
import 'package:login_app/ui/auth/signup_success_sreen.dart';
import 'package:login_app/ui/auth/update_psw_success_screen.dart';
import 'package:login_app/ui/auth/verify_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VerifyScreen(),
    );
  }
}
