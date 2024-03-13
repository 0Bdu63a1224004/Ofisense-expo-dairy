import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ofisense/controller/bottombar_controller.dart';
import 'package:ofisense/screens/add/detail_screen.dart';
import 'package:ofisense/screens/add/reg_screen.dart';
import 'package:ofisense/screens/profile/profile_screen.dart';

import 'package:ofisense/screens/home/search_company_screen.dart';
import 'package:ofisense/widget/bottom_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bottomBarController = Get.put(BottomBarController());
  List screens = [SearchCompanyScreen(), Reg_Screen(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(),
      body:Obx(() =>  screens[bottomBarController.bottomBarIndex.value],),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
          child: BottomBarWidget()),
    );
  }
}
