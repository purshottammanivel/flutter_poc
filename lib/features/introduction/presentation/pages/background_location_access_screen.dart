import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class BackgroundLocationAccessScreen extends StatelessWidget {
  const BackgroundLocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 219, 233, 242),
      //   scrolledUnderElevation: 0,
      //   title: Text(
      //     Strings.appName,
      //     style: GoogleFonts.ptSans(
      //       color: const Color.fromARGB(250, 0, 102, 140),
      //       fontSize: 24,
      //     ),
      //   ),
      //   iconTheme: const IconThemeData().copyWith(
      //     color: const Color.fromARGB(250, 0, 102, 140),
      //   ),
      // ),
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/ic_location.PNG',
              height: 100,
              color: theme.iconTheme.color,
            ),
            const SizedBox(height: 50),
            Text(
              Strings.backgroundPermission,
              style: GoogleFonts.ptSans(
                // color: const Color.fromARGB(255, 0, 102, 140),
                color: theme.textTheme.headlineLarge?.color,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Text(
                Strings.backgroundPermissionDescription,
                style: GoogleFonts.ptSans(
                  // color: Colors.black,
                  color: theme.brightness == Brightness.light
                      ? const Color.fromARGB(255, 115, 122, 128)
                      : const Color.fromARGB(255, 184, 193, 199),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.customerIdInputScreen,
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 10.0,
                ),
                // backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                backgroundColor: theme.brightness == Brightness.light
                    ? const Color.fromARGB(250, 0, 102, 140) // Light mode color
                    : const Color.fromARGB(255, 118, 209, 254),
                foregroundColor: Colors.white,
              ),
              child: Text(
                Strings.btnBackgroundPermissionIAgree,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                  color: theme.brightness == Brightness.light
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
