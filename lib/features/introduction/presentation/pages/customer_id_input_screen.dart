import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: SingleChildScrollView(
              reverse: true, // Reverse the direction of the scrollable
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(), // Placeholder for the reversed column
                  Image.asset(
                    'assets/images/ic_customer_id.PNG',
                    height: 100,
                    color: const Color.fromARGB(250, 0, 102, 140),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    Strings.appName,
                    style: GoogleFonts.ptSans(
                      fontSize: 38,
                      color: const Color.fromARGB(250, 0, 102, 140),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    Strings.appUrnNumberTitle,
                    style: GoogleFonts.ptSans(
                      color: const Color.fromARGB(255, 63, 71, 77),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    Strings.appUrnNumber,
                    style: GoogleFonts.ptSans(
                      color: const Color.fromARGB(255, 63, 71, 77),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 0.0,
                    ),
                    child: TextField(
                      cursorColor: const Color.fromARGB(250, 0, 102, 140),
                      //controller: _customerIdController,
                      decoration: InputDecoration(
                        labelText: Strings.textFieldHintEnterCustomerID,
                        labelStyle: GoogleFonts.ptSans(
                          fontSize: 18,
                          color: const Color.fromARGB(250, 0, 102, 140),
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
                        color: const Color.fromARGB(255, 63, 71, 77),
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(
                //   context,
                //   AppRoutes.privacyPolicyScreen,
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                foregroundColor: Colors.white,
              ),
              child: Text(
                Strings.btnVerifyCustomerCode,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
