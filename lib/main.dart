import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/detail_screen.dart';
import 'package:ofisense/screens/login_screen.dart';
import 'package:ofisense/screens/profile_screen.dart';
import 'package:ofisense/screens/splash_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List screens = [DetailsScreen(), ProfilePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBody: true,
      appBar: AppBar(),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: SalomonBottomBar(
            unselectedItemColor: Colors.orangeAccent,
            selectedItemColor: Color.fromARGB(255, 215, 122, 2),
            currentIndex: currentIndex,
            onTap: (p0) {
              currentIndex = p0;
              setState(() {});
            },
            items: [
              SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home")),
              SalomonBottomBarItem(icon: Icon(Icons.add), title: Text("Add")),
              SalomonBottomBarItem(
                  icon: Icon(Icons.person), title: Text("Profile"))
            ]),
      ),
    );
  }
}
