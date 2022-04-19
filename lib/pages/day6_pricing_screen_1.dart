import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day6_theme.dart';
import 'package:flutter_7days_masetring_ui/widgets/day6_1_header.dart';
import 'package:flutter_7days_masetring_ui/widgets/day6_1_option.dart';

class PricingScreen1 extends StatefulWidget {
  const PricingScreen1({Key? key}) : super(key: key);

  @override
  State<PricingScreen1> createState() => _PricingScreen1State();
}

class _PricingScreen1State extends State<PricingScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightColor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(
                30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Header1(),
                  Option1(
                    varImageUrl: 'assets/images/day6/1_icon_security.png',
                    varSubHeader: "Money Security",
                    varText: "Support ",
                    varHighlightedText: "24/7",
                  ),
                  Option1(
                    varImageUrl: 'assets/images/day6/1_icon_automation.png',
                    varSubHeader: "Automation",
                    varText: "We provide ",
                    varHighlightedText: "Invoice",
                  ),
                  Option1(
                    varImageUrl: 'assets/images/day6/1_icon_report.png',
                    varSubHeader: "Balance Report",
                    varText: "Can up to ",
                    varHighlightedText: "10K",
                  ),
                  const SizedBox(
                    height: 105 - 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: InkWell(
          onTap: () {},
          child: Container(
            color: blueColor,
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: Center(
              child: SizedBox(
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upgrade Now",
                        style: btnText,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 24,
                        color: lightColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
