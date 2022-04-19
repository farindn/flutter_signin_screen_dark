import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/theme/day6_theme.dart';

class Header1 extends StatefulWidget {
  const Header1({Key? key}) : super(key: key);

  @override
  State<Header1> createState() => _Header1State();
}

class _Header1State extends State<Header1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/day6/1_logo.png',
            width: 100,
          ),
          const SizedBox(
            height: 48,
          ),
          SizedBox(
            width: 222,
            child: Text(
              "Which one you wish to upgrade?",
              style: header,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
