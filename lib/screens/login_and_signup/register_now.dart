import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/login_and_signup/expo_next.dart';
import 'package:ofisense/screens/login_and_signup/otp_screen.dart';
import 'package:ofisense/screens/login_and_signup/signin_screen.dart';


class Register_Now extends StatefulWidget {
  const Register_Now({super.key});

  @override
  State<Register_Now> createState() => _Register_NowState();
}

class _Register_NowState extends State<Register_Now> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: Get.width * 0.17,
            ),
            Container(
              width: Get.width * 0.7,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.fill,
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
                    "Get Started",
                    style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.w700,
                        fontSize: Get.width * .075),
                  ),
                  Text(
                    "by creating a free account.",
                    style: TextStyle(
                        color: Color(0xFF252525),
                        fontWeight: FontWeight.normal,
                        fontSize: Get.width * .04),
                  ),
                  SizedBox(height: Get.width * .11),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * .085),
                    child: Column(
                      children: [
                        Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
                          child: TextFormField(
                              decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide(
                                                  color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide:
                                                  BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "User Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.person_2_outlined,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .04),
                        Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
                          child: TextFormField(
                              decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide(
                                                  color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide:
                                                  BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Enter Your Email",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .04),
                        Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide(
                                                  color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide:
                                                  BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.phone_iphone_rounded,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .04),
                        Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide(
                                                  color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide:
                                                  BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .03),
                        Text(
                          "By checking the box you agree to our Terms and Conditions.",
                          style: TextStyle(
                              color: Color(0xFF0000000).withOpacity(.60)),
                        ),
                        SizedBox(height: Get.width * .1),
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
                            onTap: () {Get.to(() => Otp_Screen());},
                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .05),
                            ),
                          )),
                        ),
                        SizedBox(
                          height: Get.width * .03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already a mamber?",
                                style: TextStyle(
                                    color: Color(0xFF827D7E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: Get.width * .04)),
                            InkWell(onTap: () {
                              Get.to(Signin_Screen());
                            },
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: Color(0xFFE77811),
                                    fontWeight: FontWeight.w500,
                                    fontSize: Get.width * .04),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
