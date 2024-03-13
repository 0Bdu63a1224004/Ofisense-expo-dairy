import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/login_and_signup/otp_screen.dart';

class Select_Next extends StatefulWidget {
  const Select_Next({super.key});

  @override
  State<Select_Next> createState() => _Select_NextState();
}

class _Select_NextState extends State<Select_Next> {
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
                children: [
                  Container(
                    height: Get.width * .465,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF),
                      border: Border.all(color: Color(0xFF464646).withOpacity(.30) ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: Get.width * .03, bottom: Get.width * .01),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Get.width * .05,
                              ),
                              Text(
                                "select",
                                style: TextStyle(
                                    color: Color(0xFF464646).withOpacity(.60),
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF827D7E).withOpacity(0.60),
                              ),
                              SizedBox(
                                width: Get.width * .05,
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.only(left:Get.width * .05,
                              top: Get.width * .01, bottom: Get.width * .01),
                          child: Text(
                            "Name 1",
                            style: TextStyle(
                                color: Color(0xFF464646).withOpacity(.30),fontSize:Get.width * .033
                                ),
                          ),
                        ), Divider(),Padding(
                          padding: EdgeInsets.only(left:Get.width * .05,
                              top: Get.width * .01, bottom: Get.width * .01),
                          child: Text(
                            "Name 2",
                            style: TextStyle(
                                color: Color(0xFF464646).withOpacity(.30),fontSize:Get.width * .033
                                ),
                          ),
                        ), Divider(),Padding(
                          padding: EdgeInsets.only(left:Get.width * .05,
                              top: Get.width * .01, bottom: Get.width * .01),
                          child: Text(
                            "Name 3",
                            style: TextStyle(
                                color: Color(0xFF464646).withOpacity(.30),fontSize:Get.width * .033
                                ),
                          ),
                        ), 
                      ],
                    ),
                  ),SizedBox(height: Get.width * .6,),Container(
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
                         Get.to(Otp_Screen());
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
