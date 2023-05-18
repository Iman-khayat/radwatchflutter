import 'package:flutter/material.dart';
import 'package:radwatchflutter/screens/constants.dart';
import 'package:radwatchflutter/services/auth.dart';
import '../data_screen.dart';
 
 
 

class LoginScreen extends StatelessWidget {
  final AuthService auth=AuthService();
  final formKey=GlobalKey<FormState>();
 
   //text field state
  String email = '';
  String password='';
  String error ='';
  
  static String id="loginScreen";
    LoginScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
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
            onPressed: (){}
            ) ,

        actions: [
          IconButton(
            icon :const Icon( Icons.person),
          onPressed:() {
            
          }),
          IconButton( 
            icon :const Icon( Icons.close),
          onPressed:() async{
          await auth.signout();
          })
       ]
       ),

 body :Container( 
 width: double.infinity,
 
  child: Column(
      key:formKey,

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
    Container(
    margin: EdgeInsets.only(top :22.0),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(color: Colors.amber[100],
    borderRadius: BorderRadius.circular(22)
    ),

    width: 300,
    child: const TextField(
      //validator : (val)=>val.isEmpty ? 'Enter an email':null,
      // onChanged: (val) {setState(()=> email=val);  },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Email : ",
        prefixIcon: Icon(Icons.person)
        ),
      
    ),
    ),
    Container(
    margin: EdgeInsets.only(top :22.0,bottom:22.0),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(color: Colors.amber[100],
    borderRadius: BorderRadius.circular(22)
    ),

    width: 300,
    child: const TextField(
     //validator : (val)=>val.isEmpty ? 'Enter an email':null,
     // onChanged: (Val) {setState(()=> password = val);},
         obscureText: true,
        decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Password : ",
        prefixIcon: Icon(Icons.lock)
        ),
    ),
    ),
    
    ];
    ElevatedButton(
    key: formKey,
      onPressed: ()async{
        if(formKey.currentState.validate()){
          dynamic result = await auth.signInWithEmailAndPassword(email,password);
          Navigator.pushNamed(context,DataScreen.id);
        
        if(result == null ){
          setState(()=>error = 'COULD NOT SIGN IN WITH THOSE CEDENTAILS')
        }
         }
        } 
       ),
  
       child:Text( 
       "Login",
       style: TextStyle(fontSize: 20),

       ),
       style: ButtonStyle(
        
        alignment: Alignment.bottomCenter,
        backgroundColor: MaterialStateProperty.all(Colors.amber),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical :20,horizontal:105)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
       ),

        ),     
       ),
    
 );

  }
}