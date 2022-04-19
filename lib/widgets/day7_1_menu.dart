import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day7_theme.dart';

class Menu extends StatelessWidget {
  String varImageURL;
  String varTitle;
  String varDescription;
  String varQty;
  String varPrice;

  Menu({
    required this.varImageURL,
    required this.varTitle,
    required this.varDescription,
    required this.varQty,
    required this.varPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 140,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadiusDirectional.circular(
          20,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 10,
          right: 16,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    varImageURL,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        varTitle,
                        style: textTitle,
                      ),
                      Text(
                        varDescription,
                        style: textDescription,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(
                        22,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: textSubtitle.copyWith(color: whiteColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    varQty,
                    style: textSubtitle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(
                        22,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: textSubtitle.copyWith(color: whiteColor),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    varPrice,
                    style: textSubtitle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
