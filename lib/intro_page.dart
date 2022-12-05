import 'package:flutter/material.dart';
import 'package:yoga_fitness_app_ui/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/yoga.jpg"),
                  fit: BoxFit.fill,
                  opacity: 1
              )
          ),
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  top: 60,
                  child: Center(
                      child: Text("Start Your Daily Yoga Practice",style: TextStyle(fontSize: 40,color: Colors.black87,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
                  )
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 30,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Get Started",style: TextStyle(fontSize: 25,color: Colors.white),),
                          Icon(Icons.arrow_forward_ios,color: Colors.white,)
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
