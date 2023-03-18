import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('Choose your pet',
              textStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.brown,
                  // backgroundColor: Colors.brown
                ),
                  ),
          RotateAnimatedText('Share your pets',
              textStyle: TextStyle(
                  letterSpacing: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange)),
          // RotateAnimatedText(
          //   '',
          //   textStyle: TextStyle(
          //     fontSize: 30,
          //     decoration: TextDecoration.underline,
          //   ),
          // ),
        ],
        isRepeatingAnimation: true,
        totalRepeatCount: 10,
        pause: Duration(milliseconds: 1000),
      ),

    );
  }
}
