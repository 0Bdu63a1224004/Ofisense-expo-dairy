import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/splash_screen.dart';
import 'package:ofisense/screens/welcome_screen.dart';

class Otp_Screen extends StatefulWidget {
  const Otp_Screen({super.key});

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: Get.width * 0.17,
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
              height: Get.width * .03,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 10,
                        color: Color.fromARGB(255, 159, 159, 159)),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.width * .14,
                  ),
                  Text(
                    "Get OTP ",
                    style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.w900,
                        fontSize: Get.width * .075),
                  ),
                  Text(
                    "Code send to your Email.",
                    style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.normal,
                        fontSize: Get.width * .04),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "demo@gmail.com",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontWeight: FontWeight.w900,
                            fontSize: Get.width * .04),
                      ),
                      Text(
                        " for Verification",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontWeight: FontWeight.normal,
                            fontSize: Get.width * .04),
                      )
                    ],
                  ),Spacer(),Text(
                        "Didn’t receive any code? Resend Again",
                        style: TextStyle(
                            color: Color(0xFF000000).withOpacity(.60),
                            fontWeight: FontWeight.normal,
                            fontSize: Get.width * .04),
                      ),Text(
                        "Request new code in 00:30s",
                        style: TextStyle(
                            color: Color(0xFFE77811),
                            fontWeight: FontWeight.normal,
                            fontSize: Get.width * .04),
                      ),SizedBox(height: Get.width * .02,), Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * .085),
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
                                child: InkWell(
                              onTap: () {Get.to(() => Wellcome_Screen());},
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: Get.width * .05),
                              ),
                            )),
                          ),
                      ),SizedBox(height: Get.width * .25,)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
