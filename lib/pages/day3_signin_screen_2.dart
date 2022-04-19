import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen2 extends StatelessWidget {
  const SignInScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(
          0XFFF8F8F8,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 65,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/day3/2_logo.png',
                    width: 245,
                    height: 279,
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email Address",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: const Color(
                                    0XFF17171A,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                width: 320,
                                height: 55,
                                child: TextFormField(
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0XFF17171A,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: const Color(0XFFF3F3F3),
                                    filled: true,
                                    focusColor: const Color(0XFFF3F3F3),
                                    hoverColor: const Color(0XFFF3F3F3),
                                    hintText: "email@address.com",
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(
                                        0XFFCFCFCF,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        71,
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: const Color(
                                    0XFF17171A,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                width: 320,
                                height: 55,
                                child: TextFormField(
                                  obscureText: true,
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0XFF17171A,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: const Color(0XFFF3F3F3),
                                    filled: true,
                                    focusColor: const Color(0XFFF3F3F3),
                                    hoverColor: const Color(0XFFF3F3F3),
                                    hintText: "password",
                                    hintStyle: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(
                                        0XFFCFCFCF,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        71,
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        Center(
                          child: Container(
                            width: 320,
                            height: 55,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5468FF),
                              borderRadius: BorderRadius.circular(
                                71,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(
                                      0XFFF8F8F8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Center(
                          child: Container(
                            width: 320,
                            height: 55,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF8F8F8),
                              border:
                                  Border.all(color: const Color(0XFFCFCFCF)),
                              borderRadius: BorderRadius.circular(
                                71,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Create new Account",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(
                                      0XFFCFCFCF,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
