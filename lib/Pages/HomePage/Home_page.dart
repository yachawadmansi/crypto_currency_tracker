import 'dart:ui';
import 'package:crypto_currency_tracker/Pages/Settings_Page.dart';
import 'package:crypto_currency_tracker/Pages/New_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Favourites.dart';
import 'Markets.dart';
import '../bottomappbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF0C1842),
        backgroundColor: Colors.blueGrey[800],
        title: const Text(
          "Crypto-Tracker",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.white),
        ),
      ),
      // backgroundColor: Color.fromRGBO(7, 16, 51, 0.99),
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Top Curriencies !!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  // color: Colors.white
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Markets(),
              Container(

                //height: 15.0,
                width: double.infinity,
                child: bottomappbar(),
              ),
              SizedBox(
                height: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
