import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day4_theme.dart';

class EmptyStateScreen2 extends StatelessWidget {
  const EmptyStateScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: darkColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/day4/2_bg.png',
              height: MediaQuery.of(context).size.height / 2.5,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(
                  30,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 56,
                    ),
                    Image.asset(
                      'assets/images/day4/2_ilustration.png',
                      width: 314,
                    ),
                    const SizedBox(
                      height: 78,
                    ),
                    Text(
                      "Boost Profit!",
                      style: title,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 239,
                      child: Text(
                        "Our tools are helping business to grow much faster",
                        style: subTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.circular(
                            65,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/day4/2_icon.png',
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
