import 'package:flutter/material.dart';
import 'package:rakshak/custom_widgets/constants.dart';
import 'package:rakshak/custom_widgets/custom_icon.dart';
import 'package:rakshak/custom_widgets/cutom_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          'We admire',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          'Your strong personality.',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.settings,
                    color: kMarronColor,
                    size: 25,
                  )
                ],
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Card(
                    color: Colors.grey,
                    child: SizedBox(
                      height: 200,
                      width: 300,
                    ),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey.shade300,
                              offset: const Offset(7.0, 7.0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 25.0,
                        mainAxisSpacing: 25.0,
                        shrinkWrap: true,
                        children: [
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Fake Call',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Where To',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'SOS History',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Guardians',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Safe Shake',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomIcon(icon: Icons.ac_unit_outlined),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Helpline',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}