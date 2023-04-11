import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          const Text("Slaylewks description three", style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),),
        LottieBuilder.network(
          height: MediaQuery.of(context).size.height*0.5,
          "https://assets1.lottiefiles.com/packages/lf20_o31ycawm.json"),
      ],
    );
  }
}