import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/controller/bottombar_controller.dart';
import 'package:ofisense/screens/add/reg_screen.dart';
import 'package:ofisense/screens/login_and_signup/expo_next.dart';
import 'package:ofisense/screens/login_and_signup/login_screen.dart';
import 'package:ofisense/screens/login_and_signup/signin_screen.dart';
import 'package:ofisense/screens/profile/update_profile.dart';
import 'package:ofisense/screens/profile/upload_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final bottomBarController = Get.put(BottomBarController());
  List detailsVal = [
    {"name": "Home", "icon": Icons.home},
    {"name": "Edit Profile", "icon": Icons.edit_square},
    {"name": "Add Expo Name", "icon": Icons.add_circle_sharp},
    {"name": "Log Out", "icon": Icons.logout_outlined}
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text("Bharathraj.R",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 81, 79, 79))),
                    Text("demo@gmail.com",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 81, 79, 79))),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 25, 0, 15),
                          child: Column(
                            children: List.generate(
                                4,
                                (index) => InkWell(
                                      onTap: () {
                                        if (index == 0) {
                                          bottomBarController
                                              .bottomBarIndex.value = 0;
                                        } else if (index == 1) {
                                          Get.to(() => Update_Profile());
                                        } else if (index == 2) {
                                          Get.to(() => Expo_Next());
                                        } else {
                                          Get.to(() => Signin_Screen());
                                        }
                                      },
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                detailsVal[index]["icon"],
                                                size: 22,
                                                color: Colors.black54,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                detailsVal[index]["name"],
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    color: Color.fromARGB(
                                                        255, 103, 101, 101),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          )
                                        ],
                                      ),
                                    )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
