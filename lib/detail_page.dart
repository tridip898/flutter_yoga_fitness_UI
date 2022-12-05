import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/images/rope_jump.jpg"),fit: BoxFit.fill)
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.8),
                            shape: BoxShape.circle
                          ),
                          child: IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60.0,right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("lib/icons/heart-attack.png",height: 35,color: Colors.redAccent,),
                            SizedBox(width: 10,),
                            Text("Pay attention to\nyour heart rate",style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Total-Body Refresh Flow",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.monitor_heart_outlined,size: 25,),
                      SizedBox(width: 5,),
                      Text("High-Intensity",style: TextStyle(fontSize: 18),)
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined,size: 25,),
                      SizedBox(width: 5,),
                      Text("25 min",style: TextStyle(fontSize: 18),)
                    ],
                  )
                ],
              ),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("7:34",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Cancel",style: TextStyle(fontSize: 18),),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(Icons.pause,size: 50,color: Colors.white,),
                ),
                Text("Next",style: TextStyle(fontSize: 18,color: Colors.blue),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
