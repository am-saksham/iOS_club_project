import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Backgrounds/background.dart';
import 'home_page.dart'; // Import for SVG

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LinearGradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 55.0,
                        color: const Color(0xFFDFEB8A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Welcome Back!',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 400, // Adjust this size based on the image
                        height: 100, // Adjust this size based on the image
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Image.asset(
                                "assets/logo_vit.png", // Ensure this path is correct
                                height: 500, // Adjust image size
                              ),
                            ),
                            const SizedBox(
                                width: 50), // Add spacing between images
                            Flexible(
                              child: SvgPicture.asset(
                                "assets/ios_club_logo.svg", // SVG image loaded with flutter_svg
                                height: 160, // Adjust image size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        width: 300,
                        height: 60,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              // Navigate directly to HomePage
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/google_logo.png"), // Make sure this image exists
                                const SizedBox(width: 10),
                                Text(
                                  "Sign in with Google",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Made by iOS Club VIT Bhopal',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFB3B3B2),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}