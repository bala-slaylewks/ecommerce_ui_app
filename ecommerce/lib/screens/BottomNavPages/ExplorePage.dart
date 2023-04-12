import 'package:ecommerce/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;
  final List _salonNames = [
    "Naturals Perumbakkam",
    "Naturals ECR",
    "Naturals Sholinganallur",
    "Naturals EA"
  ];
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(_w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: _salonNames.length,
          itemBuilder: (BuildContext c, int i) {
            return AnimationConfiguration.staggeredList(
              position: i,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: 30,
                verticalOffset: 300.0,
                child: FlipAnimation(
                  duration: const Duration(milliseconds: 3000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  flipAxis: FlipAxis.y,
                  child: Container(
                    margin: EdgeInsets.only(bottom: _w / 20),
                    height: _w / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColors.secondaryColor),
                            child: Center(
                                child: Text(
                              _salonNames[i].toString().substring(0, 1),
                              style:
                                  const TextStyle(color: AppColors.accentColor),
                            )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${_salonNames[i]}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      highlightColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onHighlightChanged: (value) {
                                        setState(() {
                                          isHighlighted = !isHighlighted;
                                        });
                                      },
                                      onTap: () {
                                        setState(() {
                                          isPressed2 = !isPressed2;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        margin: EdgeInsets.all(
                                            isHighlighted ? 0 : 2.5),
                                        height: isHighlighted ? 20 : 15,
                                        width: isHighlighted ? 20 : 15,
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: isPressed2
                                            ? Icon(
                                                Icons.favorite_border,
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                size: 15,
                                              )
                                            : Icon(Icons.favorite,
                                                color: Colors.pink
                                                    .withOpacity(1.0),
                                                size: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text("Chennai"),
                                const Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
