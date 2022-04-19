import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen1 extends StatelessWidget {
  const SignInScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF181A20),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 295,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/day3/1_logo.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Text(
                            "Welcome back,\nLet's make money.",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: SizedBox(
                      width: 295,
                      child: TextFormField(
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          fillColor: const Color(0XFF262A34),
                          filled: true,
                          hintText: "Email",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            color: const Color(
                              0XFF6F7075,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              17,
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 295,
                          child: TextFormField(
                            obscureText: true,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              fillColor: const Color(0XFF262A34),
                              filled: true,
                              hintText: "Password",
                              hintStyle: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                color: const Color(
                                  0XFF6F7075,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  17,
                                ),
                                borderSide: BorderSide.none,
                              ),
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Color(
                                  0XFF6F7075,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Forgot My Password",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            color: const Color(
                              0XFF6F7075,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 117,
                  ),
                  Center(
                    child: Container(
                      width: 295,
                      height: 55,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFCAC15),
                        borderRadius: BorderRadius.circular(
                          17,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.openSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(
                                0XFF6B4909,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                          text: ("Don't have account?"),
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: " Sign Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  color: Colors.white),
                            )
                          ]),
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
