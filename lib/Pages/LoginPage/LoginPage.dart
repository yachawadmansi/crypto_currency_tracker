import 'package:crypto_currency_tracker/Pages/HomePage/Home_page.dart';
import 'package:crypto_currency_tracker/Pages/Signup%20Page/Signup.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final imageurl = 'https://wallpapercave.com/wp/wp3624636.png';

  bool textvisibility = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(imageurl),
                )),
              ),

            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.43,),
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
                SizedBox(height: 10,),
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
                        hintText: "Enter Your Password ",
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
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context , MaterialPageRoute(builder: (context)=>Homepage()));
                    });
                  },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Center(
                        child: Text("Login  ",  style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold ,
                          color: Colors.white ,
                        )),
                      ),
                      decoration: BoxDecoration(

                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(25.0),
                       // backgroundBlendMode: BlendMode.colorBurn,
                        // color: Colors.amberAccent,

                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?" , style: TextStyle(fontSize: 15.0 , color: Colors.white),),
                    TextButton(onPressed: (){
                      setState(() {
                             Navigator.push(context , MaterialPageRoute(builder: (context)=>Signup()));
                      });}, child: Text("Signup" , style: TextStyle(fontSize: 16),))
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
