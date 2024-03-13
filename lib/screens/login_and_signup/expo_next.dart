import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/add/reg_screen.dart';
import 'package:ofisense/screens/profile/upload_screen.dart';

class Expo_Next extends StatefulWidget {
  const Expo_Next({super.key});

  @override
  State<Expo_Next> createState() => _Expo_NextState();
}

class _Expo_NextState extends State<Expo_Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.width * .15,
            ),
            Center(
              child: Container(
                width: Get.width * 0.7,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: Get.width * .15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .085),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xFF827D7E).withOpacity(0.60))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          hintText: "Select",
                          hintStyle: TextStyle(
                              color: Color(0xFF827D7E).withOpacity(0.60),
                              fontSize: Get.width * .035),
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF827D7E).withOpacity(0.60),
                          ))),
                  SizedBox(
                    height: Get.width * .15,
                  ),
                  Text(
                    "Expo Name :",
                    style: TextStyle(
                        color: Color(0xFF827D7E), fontSize: Get.width * .043),
                  ),
                  SizedBox(
                    height: Get.width * .01,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xFF827D7E).withOpacity(0.60))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          hintText: "Name",
                          hintStyle: TextStyle(
                              color: Color(0xFF827D7E).withOpacity(0.60),
                              fontSize: Get.width * .035),
                          suffixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: Color(0xFF827D7E).withOpacity(0.60),
                          ))),
                  SizedBox(
                    height: Get.width * .62,
                  ),
                  Container(
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
                        child: InkWell(
                      onTap: () {
                         Get.to(Reg_Screen());
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: Get.width * .05),
                      ),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
