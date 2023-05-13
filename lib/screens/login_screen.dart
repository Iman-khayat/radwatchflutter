import 'package:flutter/material.dart';
import 'package:radwatchflutter/screens/constants.dart';
 

class LoginScreen extends StatelessWidget {
  static String id="loginScreen";

  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yallowcolor,
      appBar: AppBar(
        
        title: Text ("Radwatch",
          style:  TextStyle(color:maincolor) ,
          centerTitle: true),


          leading:IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {}
            ) ,

        actions: [
          IconButton(
            icon :Icon( Icons.info),
          onPressed:() {}),
          IconButton( 
            icon :Icon( Icons.close),
          onPressed:() {})
       ]
       ),

      

        body :ListView(
           children:<Widget> [
          Column(
            children: <Widget>[
             Image(image: AssetImage('images/radwatchimg.png'),
                height : 100,
                width : 100,
                fit:BoxFit.contain,
              ),
              
            ],
          )
        ],

      ),
     
    );
    
  }

}