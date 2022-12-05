import 'package:flutter/material.dart';
import 'package:yoga_fitness_app_ui/detail_page.dart';
import 'package:yoga_fitness_app_ui/widget/excercise.dart';
import 'package:yoga_fitness_app_ui/widget/yoga_type.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline_rounded,
                  size: 30,
                  color: Colors.black,
                ))
          ],
        ),
        backgroundColor: Colors.grey.shade50,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Grace Saraswati",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            )),
            Center(
                child: Text(
              "Basic Member",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600),
            )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Your metrics",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade900),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Exercise(
                    text: "Steps",
                    icon: "lib/icons/run.png",
                    rate: "9,973",
                    update: "3m",
                    iconColor: Colors.blue,
                  ),
                  Exercise(
                    text: "Heart rate",
                    icon: "lib/icons/vertical-bars.png",
                    rate: "105 bpm",
                    update: "1d",
                    iconColor: Colors.red,
                  ),
                  Exercise(
                    text: "Heart rate",
                    icon: "lib/icons/vertical-bars.png",
                    rate: "105 bpm",
                    update: "1d",
                    iconColor: Colors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Collection",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Times New Roman"),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailPage()));
                      },
                      child: YogaType(
                          text: "Essential Yoga Flow",
                          time: "15 min, beginner",
                          image: "lib/images/yoga4.webp"),
                    ),
                    YogaType(
                        text: "Total-body Refresh Flow",
                        time: "25 min, mid level",
                        image: "lib/images/yoga5.webp")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
