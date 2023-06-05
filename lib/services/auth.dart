import 'package:firebase_auth/firebase_auth.dart';
import 'package:radwatchflutter/models/user.dart';
 
 
class AuthService{
  final FirebaseAuth auth=FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  Users? userFromFirebaseUser(User user){
     // ignore: unnecessary_null_comparison
     return user != null ? Users(id:user.uid):null ;
  }
  //auth change user stream 
  Stream<User>get user{
return  auth.authStateChanges()
    //.map((User user)=>userFromFirebaseUser(user));
    .map(userFromFirebaseUser as User Function(User? event));
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