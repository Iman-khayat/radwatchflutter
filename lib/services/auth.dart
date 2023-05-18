import 'package:firebase_auth/firebase_auth.dart';
import 'package:radwatchflutter/models/user.dart';

 
class AuthService{
  final FirebaseAuth auth=FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  Users? userFromFirebaseUser(User user){
    return user != null ? Users(uid:user.uid):null ;
  }
  //auth change user stream 
  Stream <User>get user{
return FirebaseAuth auth().onAuthStateChanged
.map((User user)=>userFromFirebaseUser(user));
  }
  //sign in anon
Future signInAnon()async{
  try{
  UserCredential result = await auth.signInAnonymously();
    
    User user= result.credential as User;
    return userFromFirebaseUser(user);
  }catch(e){
          print(e.toString());
          return null;
  }
}
  //sing in with email and password
  ////sign out
}