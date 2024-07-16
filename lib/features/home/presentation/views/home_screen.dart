import 'package:bookly/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:home_body() ,
      backgroundColor:  Color(0xff100B20),
    );
  }
}
