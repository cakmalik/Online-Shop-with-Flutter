import 'package:flutter/material.dart';
import 'package:front_myshop/pages/cart_page.dart';
import 'package:front_myshop/pages/detail_chat_page.dart';
import 'package:front_myshop/pages/edit_profile_page.dart';
import 'package:front_myshop/pages/home/main_page.dart';
import 'package:front_myshop/pages/product_page.dart';
import 'package:front_myshop/pages/sign_up_page.dart';
import 'package:front_myshop/pages/sign_in_page.dart';
import 'package:front_myshop/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
