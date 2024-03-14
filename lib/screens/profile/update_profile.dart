import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/controller/bottombar_controller.dart';

class Update_Profile extends StatefulWidget {
  const Update_Profile({super.key});

  @override
  State<Update_Profile> createState() => _Update_ProfileState();
}

class _Update_ProfileState extends State<Update_Profile> {
  final bottomBarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "My Profile",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 123, 121, 122)),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.fill,
                    ),
                    height: 55,
                    width: 165,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(
                                0.35), // Adjust the opacity of the white color filter
                            BlendMode.dstATop,
                          ),
                          fit: BoxFit.cover,
                          image: AssetImage('assets/bg.png')),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 123, 121, 122),
                            blurRadius: 12,
                            spreadRadius: 2)
                      ]),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -37,
                          left: Get.width * 0.39,
                          right: Get.width * 0.39,
                          child: CircleAvatar(
                            radius: Get.width * 0.11,
                            backgroundImage: AssetImage('assets/dProfile.png'),
                          )),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                            child: Text("Bharathraj.R",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 81, 79, 79))),
                          ),
                          Center(
                            child: Text("demo@gmail.com",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 81, 79, 79))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * .085),
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
                                          hintText: "Edit Name",
                                          hintStyle: TextStyle(
                                              color: Color(0xFF827D7E)
                                                  .withOpacity(0.60),
                                              fontSize: Get.width * .035),
                                          suffixIcon: Icon(
                                            Icons.person_2_outlined,
                                            color: Color(0xFF827D7E)
                                                .withOpacity(0.60),
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
                                          hintText: "Edit Your Email",
                                          hintStyle: TextStyle(
                                              color: Color(0xFF827D7E)
                                                  .withOpacity(0.60),
                                              fontSize: Get.width * .035),
                                          suffixIcon: Icon(
                                            Icons.email_outlined,
                                            color: Color(0xFF827D7E)
                                                .withOpacity(0.60),
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
                                              color: Color(0xFF827D7E)
                                                  .withOpacity(0.60),
                                              fontSize: Get.width * .035),
                                          suffixIcon: Icon(
                                            Icons.phone_iphone_rounded,
                                            color: Color(0xFF827D7E)
                                                .withOpacity(0.60),
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
                                              color: Color(0xFF827D7E)
                                                  .withOpacity(0.60),
                                              fontSize: Get.width * .035),
                                          suffixIcon: Icon(
                                            Icons.lock_outline,
                                            color: Color(0xFF827D7E)
                                                .withOpacity(0.60),
                                          ))),
                                ),
                                SizedBox(
                                  height: Get.width * .3,
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
                                            color: Color.fromARGB(
                                                255, 152, 152, 152),
                                            offset: Offset(0, 5))
                                      ]),
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Update Profile",
                                      style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w500,
                                          fontSize: Get.width * .05),
                                    ),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
