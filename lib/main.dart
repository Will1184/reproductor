import 'package:flutter/material.dart';
import 'package:reproductor/navigations/tabbar.dart';

void main()=> runApp(const myApp());


  class   myApp extends StatelessWidget {
  const myApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white12,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38
        ),
      ),
      home: const Tabbar(),
    );
  }
}