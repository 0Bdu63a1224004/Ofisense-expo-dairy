import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';

class Reg_Screen extends StatefulWidget {
  const Reg_Screen({super.key});

  @override
  State<Reg_Screen> createState() => _Reg_ScreenState();
}

class _Reg_ScreenState extends State<Reg_Screen> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.width * .13,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * .05,
                    ),
                    Container(
                      height: 55,
                      width: 170,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * .31,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: Get.width * .03,
                        ),
                        Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/dProfile.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.width * .04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .078),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      SizedBox(height: Get.width * .012),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Get.width * .015)),
                      ),
                      SizedBox(
                        height: Get.width * .045,
                      ),
                      Text(
                        "Business card :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      SizedBox(
                        height: Get.width * .023,
                      ),
                      busi_con(),
                      SizedBox(height: 8),
                       DottedBorder(radius: Radius.circular(5),borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child:  Container(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(Get.width * .019),
                            child: Image.asset(
                              "assets/plusRounded.png",
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: Get.width * .12,
                        decoration: BoxDecoration(
                            color: Color(0xFF0085FF).withOpacity(0.2),
                       
                            borderRadius: BorderRadius.circular(8)),
                      ),),
                      SizedBox(height: Get.width * .03),
                      Text(
                        "Hall No :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      SizedBox(height: Get.width * .012),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF827D7E))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Get.width * .01)),
                      ),
                      SizedBox(height: Get.width * .06),
                      Text(
                        "Booth No :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      SizedBox(height: Get.width * .012),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF827D7E))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: Get.width * .01)),
                      ),
                      SizedBox(
                        height: Get.width * .04,
                      ),
                      Text(
                        "Booth Image :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      busi_con(),
                      SizedBox(height: Get.width * .012),
                      DottedBorder(radius: Radius.circular(5),borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child:  Container(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(Get.width * .019),
                            child: Image.asset(
                              "assets/plusRounded.png",
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: Get.width * .12,
                        decoration: BoxDecoration(
                            color: Color(0xFF0085FF).withOpacity(0.2),
                       
                            borderRadius: BorderRadius.circular(8)),
                      ),),
                      SizedBox(
                        height: Get.width * .05,
                      ),
                      Text(
                        "Product Image :",
                        style: TextStyle(
                            color: Color(0xFF827D7E),
                            fontSize: Get.width * .043),
                      ),
                      SizedBox(
                        height: Get.width * .01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Get.width * .03,
                            horizontal: Get.width * .02),
                        width: double.infinity,
                        height: Get.width * .361,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF827D7E),
                            ),
                            color: Color(0XFFFFFFFF)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                product_con(),
                                SizedBox(
                                  height: Get.width * .015,
                                ),
                                Container(
                                  width: Get.width * .24,
                                  height: Get.width * .06,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFF827D7E)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text("Product Name",
                                        style: TextStyle(
                                            color: Color(0xFF827D7E),
                                            fontSize: Get.width * .022)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Get.width * .03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Get.width * .01,
                                ),
                                Row(
                                  children: [
                                    Text("CBM",
                                        style: TextStyle(
                                          color: Color(0xFF827D7E),
                                        )),
                                    SizedBox(
                                      width: Get.width * .09,
                                    ),
                                    Container(
                                        height: Get.width * .06,
                                        width: Get.width * .33,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFF827D7E)),
                                            borderRadius:
                                                BorderRadius.circular(5)))
                                  ],
                                ),
                                SizedBox(
                                  height: Get.width * .013,
                                ),
                                Row(
                                  children: [
                                    Text("MOQ",
                                        style: TextStyle(
                                          color: Color(0xFF827D7E),
                                        )),
                                    SizedBox(
                                      width: Get.width * .082,
                                    ),
                                    Container(
                                        height: Get.width * .06,
                                        width: Get.width * .33,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFF827D7E)),
                                            borderRadius:
                                                BorderRadius.circular(5)))
                                  ],
                                ),
                                SizedBox(
                                  height: Get.width * .015,
                                ),
                                Row(
                                  children: [
                                    Text("PRICE",
                                        style: TextStyle(
                                          color: Color(0xFF827D7E),
                                        )),
                                    SizedBox(
                                      width: Get.width * .07,
                                    ),
                                    Container(
                                        height: Get.width * .06,
                                        width: Get.width * .33,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFF827D7E)),
                                            borderRadius:
                                                BorderRadius.circular(5)))
                                  ],
                                ),
                                SizedBox(
                                  height: Get.width * .015,
                                ),
                                Row(
                                  children: [
                                    Text("NOTES",
                                        style: TextStyle(
                                          color: Color(0xFF827D7E),
                                        )),
                                    SizedBox(
                                      width: Get.width * .057,
                                    ),
                                    Container(
                                        height: Get.width * .06,
                                        width: Get.width * .33,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFF827D7E)),
                                            borderRadius:
                                                BorderRadius.circular(5)))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Get.width * .015),
                      Container(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(Get.width * .019),
                            child: Image.asset(
                              "assets/plus.png",
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: Get.width * .12,
                        decoration: BoxDecoration(
                            color: Color(0xFF0085FF),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(height: Get.width * .03),
                      Row(
                        children: [
                          Checkbox(
                            value: _bool,
                            activeColor: Color(0xFFFFFFF),
                            onChanged: (value) {
                              _bool = !_bool;
                            },
                          ),
                          Text(
                            "Remark",
                            style: TextStyle(
                                color: Color(0xFF827D7E),
                                fontSize: Get.width * .045),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: Get.width * .13,
                        decoration: BoxDecoration(
                            color: Color(0xFFE77811),
                            borderRadius: BorderRadius.circular(35),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0.02,
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 204, 203, 203),
                                  offset: Offset(0, 5))
                            ]),
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: Get.width * .05),
                        )),
                      ),SizedBox(height: Get.width*.1,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
 product_con() {
    return 
      
      DottedBorder(radius: Radius.circular(8),borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child: Container(
      width: Get.width * .24,
      height: Get.width * .24,
      decoration: BoxDecoration(
          color: Color(0xFF0085FF).withOpacity(0.2),
         
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Container(
      height: Get.width * .22,
      width: Get.width * .25,
        decoration: BoxDecoration(
            
            image: DecorationImage(
                image: AssetImage(
                  "assets/imgIcon.png",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: Container(
           height: 30,width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE77811)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Icon(Icons.file_upload_outlined,color: Colors.white,),
                Text(
                  "Upload",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF), fontSize: 16),
                )
              ],
            ),
          ),
        ),
      )),
    ));
  }

   busi_con() {
    return   DottedBorder(radius: Radius.circular(8),borderType: BorderType.RRect,
                        dashPattern: [4, 2], // Adjust dash pattern as needed
                        color: Colors.blue,
                        strokeWidth: 1,
                        child: Container(
      width: double.infinity,
      height: Get.width * .38,
      decoration: BoxDecoration(
          color: Color(0xFF0085FF).withOpacity(0.2),
         
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Container(
        height: Get.width * .3,
        width: Get.width * .4,
        decoration: BoxDecoration(
            
            image: DecorationImage(
                image: AssetImage(
                  "assets/imgIcon.png",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: Container(
           height: 30,width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE77811)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Icon(Icons.file_upload_outlined,color: Colors.white,),
                Text(
                  "Upload",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF), fontSize: 16),
                )
              ],
            ),
          ),
        ),
      )),
    ));
  }
}
