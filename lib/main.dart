import 'package:flutter/material.dart';
import 'package:travel_app_submission/views/detail_page.dart';
import 'package:travel_app_submission/views/home_page.dart';
import 'package:travel_app_submission/views/success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => const HomePage(),
        '/detail': (BuildContext context) => const DetailPage(),
        '/success': (BuildContext context) => const SuccessPage(),
      },
    );
  }
}