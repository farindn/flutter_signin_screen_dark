import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartedScreen2 extends StatelessWidget {
  const StartedScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFF8F8F8),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (MediaQuery.of(context).size.width - 295) / 2,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Health First",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Exercise together with our best community fit in the world",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF828284),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/day2/2_content.png',
                    width: 295,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                    width: 295,
                    height: 55,
                    color: const Color(0XFFAFEA0D),
                    child: Center(
                      child: Text(
                        "Shape My Body",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Terms & Conditions",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF757575),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
