import 'package:ecommerce/screens/WelcomePages/IntroPageOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../HomePage.dart';
import 'IntroPageThree.dart';
import 'IntroPageTwo.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // controller
  final PageController _controller = PageController();
  // bool for last page or not
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = (index == 2);
            });
          },
          children: const [
            IntroPageOne(),
            IntroPageTwo(),
            IntroPageThree(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // back button
                InkWell(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("Skip")),
                SmoothPageIndicator(controller: _controller, count: 3),
                isLastPage
                    ? InkWell(
                        onTap: () {
                          Get.to(const HomePage());
                        },
                        child: const Text("Done"))
                    : InkWell(
                        onTap: () {},
                        child: const Text("Next"),
                      ),
                // skip button
              ],
            ))
      ],
    ));
  }
}
