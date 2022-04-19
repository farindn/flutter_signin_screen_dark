import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day5_theme.dart';

class RatingScreen2 extends StatelessWidget {
  const RatingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightGreykColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(
                28,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/day5/2_logo.png',
                    width: 295,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Enjoy Your Meal",
                    style: title,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Please rate our experience",
                    style: subTitle,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 290,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: goldColor,
                          size: 50,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: goldColor,
                          size: 50,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: goldColor,
                          size: 50,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: whiteColor,
                          size: 50,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: whiteColor,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Container(
                    width: 319,
                    height: 130,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(
                        17,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ),
                      child: Text(
                        "Your message",
                        style: msgText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 319,
                    height: 55,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadiusDirectional.circular(
                        13,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Submit Review",
                        style: btnText,
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
