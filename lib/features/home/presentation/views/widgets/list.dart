import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            //width: 150,
            //height: 224,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16), // تعديل الحواف كما ترغب
            ),
            child: Image.asset(AssetsData.testImage),

          ),
        );
      },itemCount: 5,scrollDirection: Axis.horizontal,),
    );
  }
}
