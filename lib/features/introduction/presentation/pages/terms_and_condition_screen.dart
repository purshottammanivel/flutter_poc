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
        scrolledUnderElevation: 0,
        title: const Text(Strings.appName),
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
            right: 40.0,
            left: 40.0,
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
                foregroundColor: Colors.black,
              ),
              child: const Text(Strings.btnAgreePrivacyAndPolicy),
            ),
          ),
        ],
      ),
    );
  }
}
