
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radwatchflutter/screens/wrapper.dart';
import 'package:radwatchflutter/services/auth.dart';
 
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: const FirebaseOptions(
        apiKey: "",
        appId: "",
        messagingSenderId: "",
        projectId: ""));
  runApp(const MyApp());
}

 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value:AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: Wrapper(),
      ),
      );
      }

  }
 
 
  