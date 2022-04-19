import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day6_theme.dart';

class PricingScreen2 extends StatelessWidget {
  const PricingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/day6/2_bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(
                  28,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/day6/2_logo.png',
                        width: 164,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Pro Features",
                        style: title,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 216,
                        child: Text(
                          "Unlock the winner modules and get more insights",
                          style: subTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: SizedBox(
                          width: 319,
                          child: Row(
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(
                                    26,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: lightColor,
                                  ),
                                ),
                              ),
                              const Center(
                                child: SizedBox(
                                  width: 12,
                                ),
                              ),
                              Text(
                                "Unlock Our Top Charts",
                                style: optionText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 26,
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 319,
                          child: Row(
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(
                                    26,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: lightColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Save More than 1,000 Docs",
                                style: optionText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 26,
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 319,
                          child: Row(
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(
                                    26,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: lightColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "24/7 Customer Support",
                                style: optionText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 26,
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 319,
                          child: Row(
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(
                                    26,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: lightColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Track Company’s Spending",
                                style: optionText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 58,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 319,
                          height: 55,
                          decoration: BoxDecoration(
                            color: pinkColor,
                            borderRadius: BorderRadius.circular(
                              55,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                              7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 41,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(
                                      41,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Subscribe Now",
                                  style: buttonText,
                                ),
                                Container(
                                  width: 41,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: softPinkColor,
                                    borderRadius: BorderRadius.circular(
                                      41,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 24,
                                    color: lightColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                      Text(
                        "Contact Support",
                        style: optionText.copyWith(
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
