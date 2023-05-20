import 'package:flutter/material.dart';
import 'package:radwatchflutter/screens/home/login_screen.dart';
import 'package:firebase_core_web/firebase_core_web.dart';

 class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  
   @override
  Widget build(BuildContext context) {
    return  LoginScreen();
  }
}