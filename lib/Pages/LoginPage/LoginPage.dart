import 'dart:ui';

import 'package:crypto_currency_tracker/Pages/HomePage/Home_page.dart';
import 'package:crypto_currency_tracker/Pages/Signup%20Page/Signup.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final imageurl = 'https://www.shutterstock.com/image-illustration/abstract-3d-technology-science-neon-600w-1931164898.jpg';

  bool textvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,

          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.indigo, Colors.cyan])),
          // width: double.infinity,
          // height: double.infinity,
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: Image.asset('assets/unnamed.jpg') as ImageProvider,
          //)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0 , right: 15.0 , top: 50.0),
                  child: Center(child: Image.asset('assets/R.jpg' , height: MediaQuery.of(context).size.height*0.35,fit: BoxFit.cover, )),
                ),//color
                SizedBox( height:MediaQuery.of(context).size.height*0.015),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0 , left: 8.0 , right: 8.0),
                  child: TextFormField(
                    obscureText: textvisibility,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 25.0),
                        hintText: "Enter Your Email  Here",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                        )),
                  ),
                ),
                // SizedBox(
                //   height: 0,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0 , left: 8.0 , right: 8.0),
                  child: TextFormField(
                    obscureText: textvisibility,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              textvisibility = !textvisibility;
                            });
                          },
                          icon: textvisibility
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 25.0),
                        hintText: "Enter Your Password ",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                        )),
                  ),
                ),
                SizedBox(height: 10.0,),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Homepage()));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0 , right: 20.0 , top: 30.0),
                      child: Container(
                        width: 100,
                        height: 70,
                        child: Center(
                          child: Text("Login  ",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                        decoration: BoxDecoration(
                          backgroundBlendMode: BlendMode.lighten,
                          gradient: LinearGradient(
                            colors: [ Colors.blue.shade200 , Colors.greenAccent , Colors.blue.shade200]
                          ),
                          color: Colors.greenAccent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25.0),
                          // backgroundBlendMode: BlendMode.colorBurn,
                          // color: Colors.amberAccent,
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          });
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(fontSize: 16 , color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
