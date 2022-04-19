import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF13131E),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 4,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/day1/1_logo.png',
                      width: 140,
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      "V E N T U R E",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(
                          0XFFFFFFFF,
                        ),
                      ),
                      textAlign: TextAlign.center,
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
