import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rakshak/custom_widgets/constants.dart';
import 'package:rakshak/custom_widgets/custom_icon.dart';
import 'package:rakshak/custom_widgets/cutom_bottom_nav_bar.dart';
import 'package:shake/shake.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ShakeDetector detector = ShakeDetector.autoStart(
  //     shakeThresholdGravity: 1,
  //     minimumShakeCount: 5,
  //     onPhoneShake: () {
  //       print(DateTime.now());
  //     });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({
    Key? key,
  }) : super(key: key);

  final Widget svg = SvgPicture.asset('assets/icons8-settings.svg',
      semanticsLabel: 'Acme Logo');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'We admire',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Your strong personality.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons8-settings.svg',
                      color: kMarronColor, semanticsLabel: 'Setting'),
                  onPressed: () {},
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
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, offset: Offset(2.0, 2.0))
                  ]),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
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
                            CustomIcon(
                              iconPath:
                                  'assets/call_FILL0_wght400_GRAD0_opsz48.svg',
                              iconLabel: 'Fake Call',
                            ),
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
                            CustomIcon(
                              iconPath:
                                  'assets/share_location_FILL0_wght400_GRAD0_opsz48.svg',
                              iconLabel: 'WhereTo',
                            ),
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
                            CustomIcon(
                              iconPath:
                                  'assets/history_FILL0_wght400_GRAD0_opsz48.svg',
                              iconLabel: 'sosHistory',
                            ),
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
                            CustomIcon(
                              iconPath: 'assets/Artboard 100134.svg',
                              iconLabel: 'Guardian',
                            ),
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
                            CustomIcon(
                              iconPath:
                                  'assets/edgesensor_high_FILL0_wght400_GRAD0_opsz48.svg',
                              iconLabel: 'shake',
                            ),
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
                            CustomIcon(
                              iconPath:
                                  'assets/call_FILL0_wght400_GRAD0_opsz48.svg',
                              iconLabel: 'HelpLine',
                            ),
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
                  )),
            )
          ],
        ),
      ),
    );
  }
}
