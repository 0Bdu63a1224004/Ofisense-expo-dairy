import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:ofisense/background_widget.dart';
import 'package:ofisense/screens/signin_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: BackgroundWidget(
          widget: Column(
            children: [
              SizedBox(
                height: Get.width * 0.2,
              ),
              Container(
                width: Get.width * 0.7,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .08),
                child: InkWell(
                  onTap: () {
                    Get.to(() => Signin_Screen());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color(0xFFE77811),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0.2,
                              blurRadius: 5,
                              color: Color.fromARGB(255, 152, 152, 152),
                              offset: Offset(0, 5))
                        ]),
                    child: Center(
                        child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: Get.width * .05),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .08),
                child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0.1,
                              blurRadius: 5,
                              color: Color.fromARGB(255, 175, 174, 174),
                              offset: Offset(0, 5))
                        ]),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signin_Screen()),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Color(0xFFE77811),
                            fontWeight: FontWeight.w500,
                            fontSize: Get.width * .05),
                      ),
                    ))),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
