// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tugas_flutter/auth/forgot_password.dart';
import 'package:tugas_flutter/auth/login_screen.dart';
import 'package:tugas_flutter/auth/regist_screen.dart';
import 'package:tugas_flutter/auth/splash_screen.dart';
import 'package:tugas_flutter/home/account_page.dart';
import 'package:tugas_flutter/home/home_page.dart';
import 'package:tugas_flutter/home/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 244, 244, 245),
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Light blue background to match your design
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // Replaces bodyText1
          bodyMedium: TextStyle(color: Colors.black54), // Replaces bodyText2
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FlashScreen(),
        '/login': (context) => LoginPage(),
        '/forgot_password': (context) => ForgotPassword(),
        '/register': (context) => RegistPage(),
        '/home': (context) => const HomeScreen(),
        '/account': (context) => AccountPage(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
