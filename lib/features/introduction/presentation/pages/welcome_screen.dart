import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/images/field_service.PNG',
              height: 150,
              color: Colors.grey,
            ),
            const SizedBox(height: 60),
            Text(
              Strings.appName,
              style: GoogleFonts.ptSans(fontSize: 38, color: Colors.black),
            ),
            const SizedBox(height: 70),
            Text(
              textAlign: TextAlign.start,
              Strings.appDescriptionPrefix,
              style: GoogleFonts.ptSans(
                fontSize: 28,
                color: Colors.grey,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              Strings.appDescriptionSuffix,
              style: GoogleFonts.ptSans(
                fontSize: 28,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              Strings.appVersion,
              style: GoogleFonts.ptSans(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.privacyPolicyScreen,
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 10.0,
                ),
                foregroundColor: Colors.black,
              ),
              child: Text(
                Strings.btnTextNext,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
