import 'package:flutter/material.dart';
import 'package:flutter_7days_masetring_ui/pages/day1_splash_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day1_splash_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day2_started_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day2_started_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day3_signin_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day3_signin_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day4_empty_state_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day4_empty_state_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day5_rating_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day5_rating_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day6_pricing_screen_1.dart';
import 'package:flutter_7days_masetring_ui/pages/day6_pricing_screen_2.dart';
import 'package:flutter_7days_masetring_ui/pages/day7_random_screen_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PricingScreen2(),
    );
  }
}
