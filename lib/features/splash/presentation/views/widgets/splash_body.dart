import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: Offset(-1.5, 20), end: Offset.zero).animate(animationController);
    slidingAnimation2 = Tween<Offset>(begin: Offset(1.5, -7), end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition( position: slidingAnimation2,child: Image.asset("assets/images/Logo.png")),
        Center(child: SlideTransition(
                position: slidingAnimation,
                child: Text(
                  "Read Free Books",
                 // style: TextStyle(color: Colors.white),
                )))
      ],
    );
  }
}
