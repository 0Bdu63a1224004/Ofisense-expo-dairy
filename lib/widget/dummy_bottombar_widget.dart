
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ofisense/controller/bottombar_controller.dart';
import 'package:ofisense/saloman.dart';
import 'package:ofisense/screens/home/home_screen.dart';

class DummyBottomBar extends StatefulWidget {
  const DummyBottomBar({super.key});

  @override
  State<DummyBottomBar> createState() => _DummyBottomBarState();
}

class _DummyBottomBarState extends State<DummyBottomBar> {
   final bottomBarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: SalomonBottomBar(
            unselectedItemColor: Colors.orangeAccent,
            selectedItemColor: Color.fromARGB(255, 215, 122, 2),
            currentIndex: bottomBarController.bottomBarIndex.value,
            onTap: (p0) {
              bottomBarController.bottomBarIndex.value = p0;
              Get.to(() => HomeScreen());
            },
            items: [
              SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home")),
              SalomonBottomBarItem(icon: Icon(Icons.add), title: Text("Add")),
              SalomonBottomBarItem(
                  icon: Icon(Icons.person), title: Text("Profile"))
            ]),
      );
  }
}