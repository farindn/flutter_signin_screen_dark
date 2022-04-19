import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day5_theme.dart';

class RatingScreen1 extends StatelessWidget {
  const RatingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/day5/1_logo.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Pizza Ballado",
                    style: header,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "\$90,00",
                    style: subHeader,
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Was it delicious?",
                      style: text,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/day5/1_pic_angry.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/day5/1_pic_sad.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: lightColor,
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/day5/1_pic_happy.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/day5/1_pic_love.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    width: 211,
                    height: 55,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(
                        60,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Rate Now",
                        style: button,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
