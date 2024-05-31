import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class BackgroundLocationAccessScreen extends StatelessWidget {
  const BackgroundLocationAccessScreen({super.key});

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/ic_location.PNG',
              height: 100,
              color: const Color.fromARGB(255, 0, 102, 140),
            ),
            const SizedBox(height: 50),
            Text(
              Strings.backgroundPermission,
              style: GoogleFonts.ptSans(
                color: const Color.fromARGB(255, 0, 102, 140),
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Text(
                Strings.backgroundPermissionDescription,
                style: GoogleFonts.ptSans(
                  color: Colors.black,
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
                backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                foregroundColor: Colors.white,
              ),
              child: Text(
                Strings.btnBackgroundPermissionIAgree,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
