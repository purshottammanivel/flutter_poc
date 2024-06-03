import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/images/field_service.PNG',
              height: 150,
              color: theme.iconTheme.color,
            ),
            const SizedBox(height: 60),
            Text(
              Strings.appName,
              style: GoogleFonts.ptSans(
                fontSize: 38,
                // color: const Color.fromARGB(255, 0, 102, 140),
                color: theme.textTheme.headlineLarge?.color,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              textAlign: TextAlign.start,
              Strings.appDescriptionPrefix,
              style: GoogleFonts.ptSans(
                fontSize: 28,
                //color: const Color.fromARGB(255, 115, 122, 128),
                color: theme.brightness == Brightness.light
                    ? const Color.fromARGB(255, 115, 122, 128)
                    : const Color.fromARGB(255, 184, 193, 199),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              Strings.appDescriptionSuffix,
              style: GoogleFonts.ptSans(
                fontSize: 28,
                //color: const Color.fromARGB(255, 115, 122, 128),
                color: theme.brightness == Brightness.light
                    ? const Color.fromARGB(255, 115, 122, 128)
                    : const Color.fromARGB(255, 184, 193, 199),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              Strings.appVersion,
              style: GoogleFonts.ptSans(
                //color: const Color.fromARGB(250, 0, 102, 140),
                fontSize: 16,
                color: theme.brightness == Brightness.light
                    ? const Color.fromARGB(255, 111, 118, 124)
                    : const Color.fromARGB(255, 133, 140, 146),
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
                //backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                backgroundColor: theme.brightness == Brightness.light
                    ? const Color.fromARGB(250, 0, 102, 140) // Light mode color
                    : const Color.fromARGB(255, 118, 209, 254),
                foregroundColor: Colors.black,
              ),
              child: Text(
                Strings.btnTextNext,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                  color: theme.brightness == Brightness.light
                      ? Colors.white
                      : Colors.black,
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
