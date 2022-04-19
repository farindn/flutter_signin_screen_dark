import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartedScreen1 extends StatelessWidget {
  const StartedScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0XFF877BFB),
              child: const Icon(
                Icons.login_rounded,
                size: 34,
                color: Colors.white,
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/day2/1_bg.png',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 500,
                    ),
                    child: Text(
                      "Maximize Revenue",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 75 / 2,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 75,
                      child: Text(
                        "Gain more profit from cryptocurrency without any risk involved",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
