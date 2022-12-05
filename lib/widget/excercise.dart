import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String text;
  final String icon;
  final String rate;
  final String update;
  final iconColor;

  const Exercise({Key? key, required this.text, required this.icon, required this.rate, required this.update, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15,left: 20,bottom: 15),
      height: MediaQuery.of(context).size.height*0.28,
      width: MediaQuery.of(context).size.width*0.45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                spreadRadius: 05,
                offset: Offset(0, 5)
            )
          ]
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w400),),
          SizedBox(height: 10,),
          Center(
            child: Container(
              child: Image.asset(icon,height: 70,color: iconColor,),
            ),
          ),
          SizedBox(height: 15,),
          Text(rate,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.grey.shade900),),
          Text("last update\t$update",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),)

        ],
      ),
    );
  }
}
