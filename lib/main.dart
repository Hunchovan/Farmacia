import 'package:farmacia/components/onboarding_screen/onboarding_screen.dart';
import 'package:farmacia/components/widgets/persistent_nav.dart';
import 'package:farmacia/pages/cart.dart';
import 'package:farmacia/pages/compra_page.dart';
import 'package:farmacia/pages/home_page.dart';
import 'package:farmacia/pages/initial_pages.dart';
import 'package:farmacia/pages/login_page.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()

    );
  }
}