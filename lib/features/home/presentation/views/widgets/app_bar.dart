import 'package:flutter/material.dart';
class app_bar extends StatelessWidget {
  const app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(height: 85,),
      Image.asset("assets/images/Logo.png",width: 80,height: 30,),
      Spacer(),
      Icon(Icons.search)
    ],);
  }
}
