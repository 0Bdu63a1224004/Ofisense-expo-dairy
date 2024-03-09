import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ofisense/background_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.35), // Adjust the opacity of the white color filter
              BlendMode.dstATop,
            ),
              fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
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
                  width: 117,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/dProfile.png'),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            sec_Row(),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.grey, offset: Offset(0, 5)),
              ]),
              child: Image.asset(
                "assets/bod.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            row_4(),
            SizedBox(
              height: 30,
            ),
            row_5(),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Booth Image :",
                    style: TextStyle(
                        fontSize: 19, color: Color.fromARGB(255, 101, 98, 98))),
              ],
            ),SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30,),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/app.png"))),
                width: double.infinity,
                height: 165,
               
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Product image :",
                    style: TextStyle(
                        fontSize: 19, color: Color.fromARGB(255, 101, 98, 98))),
              ],
            ),SizedBox(height: 10,),
            row_7(),
            row_8(),
            row_9(),
            row_10(),
          ],
        ),
      ),
    );
  }

  Padding row_10() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 6, 30, 50),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 120, 17),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 124,
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              Text(
                "Edit",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding row_9() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 120, 17),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            "Done",
            style: TextStyle(color: Colors.white, fontSize: 20,),
          ),
        ),
      ),
    );
  }

  Padding row_8() {
    return Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 40),
        child: Container(padding: EdgeInsets.all(15),
          width: double.infinity,
       
          decoration: BoxDecoration(color: Colors.white,
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "In finance a loan is the tranfer of money by one party to",
            style: TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 101, 98, 98),
                fontWeight: FontWeight.w500),
          ),
        ));
  }

  SingleChildScrollView row_7() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 163,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/chair.png"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5))),
                   
                  ),
                  Container(
                    width: 180,
                  
                    decoration: BoxDecoration(color: Colors.white,
                       ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 7, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chair",
                            style: TextStyle(
                                color: Color.fromARGB(255, 70, 70, 70),
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Price:€100.00",
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 120, 17),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MOQ:0000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 70, 70, 70),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),Text(
                                "CBM 00000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 70, 70, 70),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "NOTE:",
                            style: TextStyle(
                                color: Color.fromARGB(255, 70, 70, 70),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "In finace, a loan is the tranfer of money by one party to another with an agreement to pay it back",
                            style: TextStyle(
                                color: Color.fromARGB(255, 70, 70, 70),
                                fontSize: 12),
                          ),
                         
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  row_5() {
    return Container(
      width: Get.width*0.9,
   padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Company Name : Bharathraj.R",
            style: TextStyle(
                fontSize: Get.width * 0.048,
                color: Color.fromARGB(255, 101, 98, 98)),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Hall No    : 0000000",
            style: TextStyle(
                fontSize: Get.width * 0.048,
                color: Color.fromARGB(255, 101, 98, 98)),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Booth No : 00000",
            style: TextStyle(
                fontSize: Get.width * 0.048,
                color: Color.fromARGB(255, 101, 98, 98)),
          )
        ],
      ),
    );
  }

  Padding row_4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF827D7E),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: Text(
              "Expo Name",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Row sec_Row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        dateTimeWidget(Icons.access_time, "01:00 PM     "),
        dateTimeWidget(Icons.calendar_month_outlined, "01/01/2000  "),
        
      ],
    );
  }

  Container dateTimeWidget(IconData icn, String tit) {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 235, 228),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(blurRadius: 5, color: Color.fromARGB(255, 198, 198, 198), offset: Offset(0, 5)),
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Container(margin: EdgeInsets.only(left: 10), child: Icon(icn,color: Colors.black45,)),
      
          Text(tit,style: TextStyle(color: Colors.black45,fontSize: 16),),
         
        ],
      ),
    );
  }
}
