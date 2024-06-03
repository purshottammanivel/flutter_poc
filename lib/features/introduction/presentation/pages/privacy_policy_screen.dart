import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 219, 233, 242),
        backgroundColor: theme.brightness == Brightness.light
            ? const Color.fromARGB(255, 219, 233, 242) // Light mode color
            : const Color.fromARGB(255, 23, 40, 48), // Dark mode color
        scrolledUnderElevation: 0,
        title: Text(
          Strings.appName,
          style: GoogleFonts.ptSans(
            // color: const Color.fromARGB(250, 0, 102, 140),
            color: theme.brightness == Brightness.light
                ? const Color.fromARGB(250, 0, 102, 140)
                : Colors.white,
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          // color: const Color.fromARGB(250, 0, 102, 140),
          color: theme.brightness == Brightness.light
              ? const Color.fromARGB(250, 0, 102, 140)
              : Colors.white
              // ? const Color.fromARGB(250, 0, 102, 140) // Light mode color
              // : const Color.fromARGB(250, 192, 199, 205), // Dark mode color
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
                      // color: Colors.black,
                      color: theme.brightness == Brightness.light
                          ? const Color.fromARGB(255, 115, 122, 128)
                          : const Color.fromARGB(255, 184, 193, 199),
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
                // backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                backgroundColor: theme.brightness == Brightness.light
                    ? const Color.fromARGB(250, 0, 102, 140) // Light mode color
                    : const Color.fromARGB(255, 118, 209, 254),
                foregroundColor: Colors.white,
              ),
              child: Text(
                Strings.btnAgreePrivacyAndPolicy,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                  color: theme.brightness == Brightness.light
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
