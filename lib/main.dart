import 'package:crypto_currency_tracker/Constants/Themes.dart';
import 'package:crypto_currency_tracker/Pages/animatedsplashscreen.dart';
import 'package:crypto_currency_tracker/Providers/Theme_provider.dart';
import 'package:crypto_currency_tracker/Providers/marketprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/Chart_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Marketprovider>(
          create: (context) => Marketprovider(),
        ),
        ChangeNotifierProvider<GraphProvider>(
          create: (context) => GraphProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider("light"),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode : themeProvider.themeMode,
            theme: lightTheme,
            darkTheme: darktheme,
            home: flashscreen(),
          );
        },
      ),
    );
  }
}
