import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/login_and_signup/signin_screen.dart';

class Change_Password extends StatefulWidget {
  const Change_Password({super.key});

  @override
  State<Change_Password> createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
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
                    "Forgot Password",
                    style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.w700,
                        fontSize: Get.width * .075),
                  ),
                  Text(
                    "Enter Your Password",
                    style: TextStyle(
                        color: Color(0xFF827D7E),
                        fontWeight: FontWeight.normal,
                        fontSize: Get.width * .04),
                  ),
                  SizedBox(height: Get.width * .11),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * .085),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Enter Your Email",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .04),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Old Password",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(height: Get.width * .04),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.black12)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "New Password",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xFF827D7E).withOpacity(0.60),
                                      fontSize: Get.width * .035),
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF827D7E).withOpacity(0.60),
                                  ))),
                        ),
                        SizedBox(
                          height: Get.width * .38,
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
                            onTap: () {},
                            child: Text(
                              "Change Password",
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
                            InkWell(
                              onTap: () {
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
                        ),
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
