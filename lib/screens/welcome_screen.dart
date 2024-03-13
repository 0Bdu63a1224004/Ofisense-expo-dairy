import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/login_and_signup/expo_next.dart';

class Wellcome_Screen extends StatefulWidget {
  const Wellcome_Screen({super.key});

  @override
  State<Wellcome_Screen> createState() => _Wellcome_ScreenState();
}

class _Wellcome_ScreenState extends State<Wellcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
          child: Center(
            child: InkWell(
              onTap: () {
                Get.to(() => Expo_Next());
              },
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Welcome to",style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.w900,
                        fontSize: Get.width * .075),),
                  Container(
                    width: Get.width * 1,height:  Get.width * 0.25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/logo.png",
                            ))),
                  ),
                ],
              ),
            ),
          )),);
  }
}