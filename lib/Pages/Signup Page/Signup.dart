import 'package:crypto_currency_tracker/Pages/HomePage/Home_page.dart';
import 'package:crypto_currency_tracker/Pages/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   bool textvisibility = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0 , right: 15.0 , top: 5.0),
                child: Center(child: Image.asset('assets/cr.jpg' , height: MediaQuery.of(context).size.height*0.35,fit: BoxFit.cover, )),
              ),//color: Colors.tealAccent,) ,
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                  //  filled: true,
                  //  fillColor: Colors.white,
                    labelText:  "Name",
                    labelStyle: TextStyle(
                      fontSize: 25.0
                    ),
                    hintText: "Enter Your Name Here",
                    hintStyle: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black ,

                    ),
                    contentPadding: EdgeInsets.all(5) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                     // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                    )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: textvisibility,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText:  "Email",
                      labelStyle: TextStyle(
                          fontSize: 25.0
                      ),
                      hintText: "Enter Your Email  Here",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black ,

                      ),
                      contentPadding: EdgeInsets.all(5) ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: textvisibility,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          textvisibility = !textvisibility ;
                        });
                      }, icon: textvisibility ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      labelText:  "Password",
                      labelStyle: TextStyle(
                          fontSize: 25.0
                      ),
                      hintText: "Enter Your Password  Here",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black ,

                      ),
                      contentPadding: EdgeInsets.all(5) ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                      )
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: textvisibility,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText:  "Password",
                      labelStyle: TextStyle(
                          fontSize: 25.0
                      ),
                      hintText: "Confirm  Password ",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black ,

                      ),
                      contentPadding: EdgeInsets.all(5) ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        // borderSide: BorderSide(strokeAlign: StrokeAlign.center)
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,) ,
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage()));
                  });
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Center(
                    child: Text("Signup ",  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold ,
                      color: Colors.black ,
                    )),
                  ),
                  decoration: BoxDecoration(

                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25.0),
                    backgroundBlendMode: BlendMode.colorBurn,
                    color: Colors.deepOrange,

                  ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Already have an account ?" , style: TextStyle(fontSize: 15.0),),
                  TextButton(onPressed: (){
                    setState(() {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));
                  });}, child: Text("Login" , style: TextStyle(fontSize: 16),))
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
