import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';

class CustomerIdInputScreen extends StatefulWidget {
  const CustomerIdInputScreen({super.key});

  @override
  State<CustomerIdInputScreen> createState() {
    return _CustomerIdInputScreenState();
  }
}

class _CustomerIdInputScreenState extends State<CustomerIdInputScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _customerIdController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/ic_customer_id.PNG',
              height: 100,
              color: Colors.grey,
            ),
            const SizedBox(height: 50),
            Text(
              Strings.appName,
              style: GoogleFonts.ptSans(
                fontSize: 38,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              Strings.appUrnNumberTitle,
              style: GoogleFonts.ptSans(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              Strings.appUrnNumber,
              style: GoogleFonts.ptSans(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 0.0,
              ),
              child: TextField(
                controller: _customerIdController,
                decoration: InputDecoration(
                  labelText: Strings.textFieldHintEnterCustomerID,
                  labelStyle: GoogleFonts.ptSans(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.values.first,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.values.last,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60.0),
              child: Text(
                Strings.privacyPolicyPriorLogin,
                textAlign: TextAlign.center,
                style: GoogleFonts.ptSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 70),
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
                Strings.btnTextNext,
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
