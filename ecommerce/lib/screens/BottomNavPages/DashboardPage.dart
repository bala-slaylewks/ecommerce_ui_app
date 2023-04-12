import 'package:ecommerce/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<dynamic> childWidget = [];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: const Text("Go Back"),
          centerTitle: true,
          brightness: Brightness.dark),
      body: AnimationLimiter(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                children: [
                  Container(
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    height: 166.0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Service type",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffd6dff2),
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                             height: 50.0, width: 100.0,
                          child:  const Center(
                            child: Text("Hair"),
                          )),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffd6dff2),
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                             height: 50.0, width: 100.0,
                          child:  const Center(
                            child: Text("Nail"),
                          )),
                     Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffd6dff2),
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                             height: 50.0, width: 100.0,
                          child:  const Center(
                            child: Text("Spa"),
                          )),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Container(
                                color: AppColors.primaryColor,
                                height: 50.0,
                                child: const Center(child: Text("Hello")))),
                        Expanded(
                            child: Container(
                                color: AppColors.primaryColor,
                                height: 50.0,
                                child: const Center(child: Text("Hello")))),
                        Expanded(
                            child: Container(
                                color: AppColors.primaryColor,
                                height: 50.0,
                                child: const Center(child: Text("Hello")))),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.primaryColor,
                    width: MediaQuery.of(context).size.width,
                    height: 160.0,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
