import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 233, 242),
        scrolledUnderElevation: 0,
        title: Text(
          Strings.appName,
          style: GoogleFonts.ptSans(
            color: const Color.fromARGB(250, 0, 102, 140),
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          color: const Color.fromARGB(250, 0, 102, 140),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    Strings.termsAndConditions,
                    style: GoogleFonts.ptSans(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            right: 60.0,
            left: 60.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.backgroundLocationAccessScreen,
                );
              },
              style: ElevatedButton.styleFrom(
                textStyle: GoogleFonts.ptSans(
                  fontSize: 18,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12.0,
                ),
                backgroundColor: Color.fromARGB(250, 0, 102, 140),
                foregroundColor: Colors.white,
              ),
              child: const Text(Strings.btnAgreePrivacyAndPolicy),
            ),
          ),
        ],
      ),
    );
  }
}
