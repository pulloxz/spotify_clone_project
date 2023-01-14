import 'package:flutter/material.dart';
import 'splash_screeen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black45,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white24,
          type: BottomNavigationBarType.fixed
        )
      ),
      home:Splash(),
    );
  }
}
