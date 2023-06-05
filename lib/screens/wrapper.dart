import 'package:flutter/material.dart';
import 'package:radwatchflutter/screens/authenticate/authenticate.dart';
import 'package:radwatchflutter/screens/home/login_screen.dart';
import 'package:radwatchflutter/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user= Provider.of<Users>(context);
    if (user == null){
      return const Authenticate();   
    }else{
      return LoginScreen();
    }
    
  }
}

