import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quran/sura_details.dart';
import 'package:islami/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:myTheme.lightTheme,
      routes: {
        HomeScreen.RouteName:(_)=>HomeScreen(),
        SuraDetaiulsScreen.RouteName:(_)=>SuraDetaiulsScreen()
      },
      initialRoute: HomeScreen.RouteName,



          );
  }
}

