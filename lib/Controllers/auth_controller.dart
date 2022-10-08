// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// class  Authcontrollers with ChangeNotifier{
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   Future<String> SignupUsers (String fullname ,String email , String password ) async{
//     String res = " Some error has occured" ;
//     try {
//       if (fullname.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
//         await _auth.createUserWithEmailAndPassword(
//             email: email, password: password);
//         res = 'successFully created account';
//       } else {
//         res = "Please fill all the feilds";
//       }
//     }
//     // } on FirebaseAuthException catch (e) {
//     // if (e.code == 'weak-password') {
//     // print(e.code);
//     // } else if (e.code == 'email-already-in-use') {
//     // print(e.code);
//     // } else if (e.code == 'user-not-found') {
//     // print(e.code);
//     // } else if (e.code == 'wrong-password') {
//     // print(e.code);
//     // }
//
//    //res = e.code;
//     catch(e){
//       res = e.toString();
//     }
//     return res ;
//   }
//   }
//



import 'package:crypto_currency_tracker/Pages/LoginPage/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Future<User?> createAccount(String name , String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance ;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try{
    User? user = (await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;
    if(user != null) {
      await _firestore.collection('users').doc(_auth.currentUser?.uid).set({
        "name" : name ,
        "email" : email ,
        "status" : "Unavaliable" ,
      });
      print("Account created  Sucessful ");
    }
    else{
      print("Feilds cannot be null");
      return user ;
    }
  }catch(e){
    print(e);
    return null ;
  }
}


Future<User?> login(String email , String password) async{
  FirebaseAuth _auth =  FirebaseAuth.instance ;

  try{
    User? user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user ;
    if(user != null){
      print("Login Sucessful");
    }else{
      print("Login failed") ;
    }
    return user ;
  }catch (e){
    print(e);
    return null ;
  }
}

Future logOut(BuildContext context) async{
  FirebaseAuth _auth = FirebaseAuth.instance ;
  try{
    await _auth.signOut().then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage())) ;
    });
  }catch(e){
    print("error");
  }
}
