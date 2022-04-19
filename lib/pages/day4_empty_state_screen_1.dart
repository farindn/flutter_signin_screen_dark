import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day4_theme.dart';

class EmptyStateScreen1 extends StatelessWidget {
  const EmptyStateScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(135 / 2),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/day4/1_ilustration.png',
                      width: 240,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Success Order",
                      style: header,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 237,
                      child: Text(
                        "We will delivery your package as soon as possible",
                        style: subHeader,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 200,
                        height: 55,
                        decoration: BoxDecoration(
                          color: pinkColor,
                          borderRadius: BorderRadius.circular(
                            17,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Done",
                            style: btnText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
