import 'package:flutter/material.dart';
import 'package:radwatchflutter/screens/constants.dart';
 
 
 

class DataScreen extends StatelessWidget {
  static String id="datascreen";
  const DataScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: const Color(0x000d2329),
       appBar: AppBar(
        backgroundColor:Colors.amber,
        title:  const Text ("Radwatch",
          style:  TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          
          
          ),
          textAlign: TextAlign.justify,
          ),


          leading:IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {}
            ) ,

        actions: [
          IconButton(
            icon :const Icon( Icons.info),
          onPressed:() {
            
          }),
          IconButton( 
            icon :const Icon( Icons.close),
          onPressed:() {})
       ]
       ),
 body :SizedBox( 
 width: double.infinity,
 
  child: Column(
  
  children :[
    Container(
      color: maincolor,
      width: 600,
      child: const Image (image: AssetImage('images/radwatchimg.png'),
                alignment: Alignment.topCenter,
                color: yallowcolor,
                height : 500,
                width : 500,
                fit:BoxFit.fill,
              ), 
    ),
  
  
  ],

 ),
    


    ),
    
    );
  } 
  }