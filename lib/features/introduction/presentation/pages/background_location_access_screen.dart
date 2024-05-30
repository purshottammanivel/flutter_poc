import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class BackgroundLocationAccessScreen extends StatelessWidget {
  const BackgroundLocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(Strings.appName),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/ic_location.PNG',
              height: 100,
              color: Colors.grey,
            ),
            const SizedBox(height: 50),
            Text(
              Strings.backgroundPermission,
              style: GoogleFonts.ptSans(
                color: Colors.black,
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
                // Navigator.pushNamed(
                //   context,
                //   AppRoutes.privacyPolicyScreen,
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 10.0,
                ),
                foregroundColor: Colors.black,
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

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      title: const Text(Strings.appName),
    );
  }
}
