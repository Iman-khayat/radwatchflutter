
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radwatchflutter/screens/data_screen.dart';
import 'package:radwatchflutter/screens/home/login_screen.dart';
import 'package:radwatchflutter/screens/wrapper.dart';
import 'package:radwatchflutter/services/auth.dart';
import 'package:provider/provider.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value:AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
      );
      }

  }
 
 
  