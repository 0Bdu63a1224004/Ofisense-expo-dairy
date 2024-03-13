import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/screens/add/detail_screen.dart';


class Update_Screen extends StatefulWidget {
  const Update_Screen({super.key});

  @override
  State<Update_Screen> createState() => _Update_ScreenState();
}

class _Update_ScreenState extends State<Update_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
            Center(
              child: Container(
                width: Get.width * 0.7,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .085),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          hintText: "Expo Name",
                          hintStyle: TextStyle(
                              color: Color(0xFF827D7E).withOpacity(0.60),
                              fontSize: Get.width * .035),
                          suffixIcon: Icon(
                            Icons.person_2_outlined,
                            color: Color(0xFF827D7E).withOpacity(0.60),
                          ))),
                  SizedBox(
                    height: Get.width * .17,
                  )
                ],
              ),
            ),
            Padding(
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
                  onTap: () {
                    
                  },
                  child: Text(
                    "Update",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: Get.width * .05),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
