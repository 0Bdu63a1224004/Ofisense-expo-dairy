import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/add/detail_screen.dart';
import 'package:ofisense/screens/home/search_company_screen.dart';

import 'package:ofisense/screens/home/search_screen.dart';


import 'package:ofisense/saloman.dart';
import 'package:ofisense/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(fontFamily: 'poppins'),
    );
  }
}
