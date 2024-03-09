import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/background_widget.dart';
import 'package:ofisense/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(seconds: 2)).then((value) {
    //   Get.to(() => Login_Screen());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(toolbarHeight: 0,),
          body: BackgroundWidget(
      widget: Center(
    child: InkWell(onTap: () {
      Get.to(() => Login_Screen());
    },
      child: Container(width: Get.width*0.8,
        child: Image.asset(
          "assets/logo.png",
          fit: BoxFit.fill,
        ),
      ),
    ),
          )),
        );
  }
}
