import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day7_theme.dart';
import 'package:flutter_7days_masetring_ui/widgets/day7_1_menu.dart';

class RandomScreen1 extends StatelessWidget {
  const RandomScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(
                36,
              ),
              child: Column(
                children: [
                  Text(
                    "My Shopping Cart",
                    style: textHeader,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Menu(
                    varImageURL: 'assets/images/day7/1_pic_burger.png',
                    varTitle: "Burger Malleta",
                    varDescription: "McTheone",
                    varQty: "2",
                    varPrice: "\$90.00",
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Menu(
                    varImageURL: 'assets/images/day7/1_pic_mojito.png',
                    varTitle: "Mojito Orange",
                    varDescription: "The Bar",
                    varQty: "5",
                    varPrice: "\$510.00",
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Container(
                    width: 315,
                    height: 161,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(
                        20,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Informations",
                              style: textTitle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Sub total",
                                  style: textDetail,
                                ),
                                const Spacer(),
                                Text(
                                  "\$600.00",
                                  style: textDetail,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Delivery",
                                  style: textDetail,
                                ),
                                const Spacer(),
                                Text(
                                  "\$80.00",
                                  style: textDetail,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Total",
                                  style: textDetail,
                                ),
                                const Spacer(),
                                Text(
                                  "\$680.00",
                                  style: textSubtitle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: 327,
                    height: 60,
                    decoration: BoxDecoration(
                      color: goldColor,
                      borderRadius: BorderRadius.circular(
                        53,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Checkout Now",
                        style: textButton,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 327,
                    height: 60,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(
                        53,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Save to Wishlist",
                        style: textButton.copyWith(color: whiteColor),
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
