import 'package:firebase_auth/firebase_auth.dart';
import 'package:radwatchflutter/models/user.dart';
 
 
class AuthService{
  final FirebaseAuth auth=FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  Users? userFromFirebaseUser(User user){
    return user != null ? Users(uid:user.uid):null ;
  }
  //auth change user stream 
  Stream<User>get user{
return  auth.authStateChanges()
    //.map((User user)=>userFromFirebaseUser(user));
    .map(userFromFirebaseUser as User Function(User? event));
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
  Future signInWithEmailAndPassword(String email,String password)async{
    try{
    UserCredential result= await auth.signInWithEmailAndPassword(email: email, password: password);
    User? user = result.user;
    return userFromFirebaseUser(user!);

    }catch(e){
    print(e.toString());
    return null ;
    }
  }
  ////sign out
  Future signout()async{
    try{
return await auth.signOut();
    }catch(e){
    print(e.toString());
    return null;
    }
  }
}