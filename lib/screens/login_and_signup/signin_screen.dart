import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:ofisense/background_widget.dart';
import 'package:ofisense/main.dart';
import 'package:ofisense/screens/home/home_screen.dart';
import 'package:ofisense/screens/login_and_signup/change_password.dart';
import 'package:ofisense/screens/login_and_signup/otp_screen.dart';
import 'package:ofisense/screens/login_and_signup/register_now.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  bool _bool = false;
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
              height: Get.width * .05,
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
                      height: Get.width * .15,
                    ),
                    Text(
                      "Wellcome Back",
                      style: TextStyle(
                          color: Color(0xFF827D7E),
                          fontWeight: FontWeight.w600,
                          fontSize: Get.width * .073),
                    ),
                    Text(
                      "sign in to access your account",
                      style: TextStyle(
                          color: Color(0xFF827D7E),
                          fontWeight: FontWeight.w400,
                          fontSize: Get.width * .046),
                    ),
                    SizedBox(
                      height: Get.width * .11,
                    ),
                    Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),child: emailField()),
                    SizedBox(
                      height: Get.width * .05,
                    ),
                    passField(),
                    SizedBox(
                      height: Get.width * .04,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * .045,
                        ),
                        Checkbox(
                          value: _bool,
                          checkColor: Colors.black,
                          activeColor: Color(0xFFFFFFFF),
                          onChanged: (value) {
                            _bool = !_bool;
                            setState(() {});
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              color: Color(0xFF000000).withOpacity(.60),
                              fontSize: Get.width * .034),
                        ),
                        SizedBox(
                          width: Get.width * .15,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Change_Password());
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color(0xFFE77811),
                                fontSize: Get.width * .035),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.width * .2,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    Get.width * .08, 0, Get.width * .02, 0),
                                child: Divider(thickness: 2,color: Color(0xFF827D7E).withOpacity(.60)))),
                        Text(
                          "OR",
                          style: TextStyle(
                              fontSize: Get.width * .045,
                              color: Color(0xFF000000).withOpacity(.60)),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              Get.width * .02, 0, Get.width * .08, 0),
                          child: Divider(thickness: 2,color: Color(0xFF827D7E).withOpacity(.60),),
                        )),
                      ],
                    ),
                    SizedBox(height: Get.width * .13),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * .08),
                      child: InkWell(
                        onTap: () {
                          Get.to(Otp_Screen());
                        },
                        child: Container(
                          width: double.infinity,
                          height: Get.width * .12,
                          decoration: BoxDecoration(
                              color: Color(0xFFE77811),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: Get.width * .05),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.width * .04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New Member?",
                            style: TextStyle(
                                color: Color(0xFF827D7E),
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .04)),
                        InkWell(
                          onTap: () {
                            Get.to(Register_Now());
                          },
                          child: Text(
                            "Register Now",
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
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding passField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .08),
      child: Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
        child: TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                hintText: "Password",
                hintStyle:
                    TextStyle(color: Colors.black26, fontSize: Get.width * .035),
                suffixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.black26,
                ))),
      ),
    );
  }

  Padding emailField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .08),
      child: Container(decoration: BoxDecoration(
        color: Colors.white, // Change this to the desired background color
        borderRadius: BorderRadius.circular(30.0),),
        child: TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                hintText: "Enter your Email",
                hintStyle:
                    TextStyle(color: Colors.black26, fontSize: Get.width * .035),
                suffixIcon: Icon(
                  Icons.mail_outlined,
                  color: Colors.black26,
                ))),
      ),
    );
  }
}
