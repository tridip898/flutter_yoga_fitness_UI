import 'package:flutter/material.dart';

class YogaType extends StatelessWidget {
  final String text;
  final String time;
  final String image;
  const YogaType({Key? key, required this.text, required this.time, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,left: 20,bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width*0.65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_added,color: Colors.white,)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text,style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: 05,),
                  Text(time,style: TextStyle(fontSize: 18,color: Colors.grey.shade50),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
