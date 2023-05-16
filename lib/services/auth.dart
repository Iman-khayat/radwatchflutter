import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth auth=FirebaseAuth.instance;
  User userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid:user.uid):null ;
  }
  //sign in anon
Future signInAnon()async{
  try{
    AuthResult result = await auth.signInAnonymously();
    FirebaseUser user= result.user;
    return userFromFirebaseUser(user);
  }catch(e){
print(e.toString());
return null;
  }
}
  //sing in with email and password
  //sign out
}