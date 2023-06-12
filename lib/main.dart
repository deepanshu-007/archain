import 'package:archain/Homepagess/Driver.dart';
import 'package:archain/pages/login.dart';
import 'package:archain/pages/onboardingpage.dart';
import 'package:archain/pages/register.dart';
import 'package:archain/pages/waiting.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
       'onboardingpage':(context) => Onboardingpage(),
        'login':(context) => Mylogin(),
        'register':(context) => Myregister(),
        'waiting':(context) => RegistrationDone(),
        'Driver':(context) => MyDriver(),
      },
      debugShowCheckedModeBanner: false,
      home: Onboardingpage(),
    );
  }
}
