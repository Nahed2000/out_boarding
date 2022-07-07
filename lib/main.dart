import 'package:flutter/material.dart';
import 'package:page_view/screen/lunch_screen.dart';
import 'package:page_view/screen/out_bording_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/out_boarding_screen',
      routes: {
        '/lunch_screen': (context) => const LunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        // '/login_screen':(context) => LoginScreen(),
        // '/home_screen':(context) => HomeScreen(),
      },
    );
  }
}
