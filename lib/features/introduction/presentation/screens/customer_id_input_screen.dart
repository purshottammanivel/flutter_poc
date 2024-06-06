import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uno_point_flutter_poc/core/resources/strings.dart';
import 'package:uno_point_flutter_poc/features/introduction/data/models/customer_detail_model.dart';
import 'package:uno_point_flutter_poc/features/introduction/domain/usecases/verify_customer_usecase.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/providers/verify_customer_providers.dart';

class CustomerIdInputScreen extends ConsumerWidget {
  CustomerIdInputScreen({super.key});

  final TextEditingController _customerIdController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    // color: const Color.fromARGB(250, 0, 102, 140),
                    color: theme.iconTheme.color,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    Strings.appName,
                    style: GoogleFonts.ptSans(
                      fontSize: 38,
                      // color: const Color.fromARGB(250, 0, 102, 140),
                      color: theme.textTheme.headlineLarge?.color,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    Strings.appUrnNumberTitle,
                    style: GoogleFonts.ptSans(
                      //color: const Color.fromARGB(255, 63, 71, 77),
                      color: theme.brightness == Brightness.light
                          ? const Color.fromARGB(255, 111, 118, 124)
                          : const Color.fromARGB(255, 133, 140, 146),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    Strings.appUrnNumber,
                    style: GoogleFonts.ptSans(
                      //color: const Color.fromARGB(255, 63, 71, 77),
                      color: theme.brightness == Brightness.light
                          ? const Color.fromARGB(255, 111, 118, 124)
                          : const Color.fromARGB(255, 133, 140, 146),
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
                      cursorColor: theme.brightness == Brightness.light
                          ? const Color.fromARGB(250, 0, 102, 140)
                          : const Color.fromARGB(255, 118, 209, 254),
                      controller: _customerIdController,
                      decoration: InputDecoration(
                        labelText: Strings.textFieldHintEnterCustomerID,
                        labelStyle: GoogleFonts.ptSans(
                          fontSize: 18,
                          color: theme.brightness == Brightness.light
                              ? const Color.fromARGB(250, 0, 102, 140)
                              : const Color.fromARGB(255, 118, 209, 254),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.brightness == Brightness.light
                                ? const Color.fromARGB(250, 0, 102, 140)
                                : const Color.fromARGB(255, 118, 209, 254),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.values.first,
                            color: theme.brightness == Brightness.light
                                ? const Color.fromARGB(250, 0, 102, 140)
                                : const Color.fromARGB(255, 118, 209, 254),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.values.last,
                            color: theme.brightness == Brightness.light
                                ? const Color.fromARGB(
                                    250, 0, 102, 140) // Light mode color
                                : const Color.fromARGB(255, 118, 209, 254),
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
                        //color: const Color.fromARGB(255, 63, 71, 77),
                        color: theme.brightness == Brightness.light
                            ? const Color.fromARGB(255, 111, 118, 124)
                            : const Color.fromARGB(255, 133, 140, 146),
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
              onPressed: () => _onVerifyCustomerIdClicked(context, ref),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                //backgroundColor: const Color.fromARGB(250, 0, 102, 140),
                backgroundColor: theme.brightness == Brightness.light
                    ? const Color.fromARGB(250, 0, 102, 140)
                    : const Color.fromARGB(255, 118, 209, 254),
                foregroundColor: Colors.white,
              ),
              child: Text(
                Strings.btnVerifyCustomerCode,
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

  /*void _onVerifyCustomerIdClicked() {
    final customerId = _customerIdController.text;
    if (customerId.isNotEmpty) {

    }
  }*/

  /*void _onVerifyCustomerIdClicked(BuildContext context, WidgetRef ref) async {
    final customerId = _customerIdController.text;
    if (customerId.isNotEmpty) {
      final verifyCustomerUseCase = ref.read(verifyCustomerUseCaseProvider);
      try {

        final result = await verifyCustomerUseCase.execute(customerId);
        if (result is CustomerDetailModel) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Customer verified: $result')),
          );
          */ /*Navigator.pushNamed(
          context,
          AppRoutes.privacyPolicyScreen,
        );*/ /*
        } else if (result is String) {
          // Handle the case when the result is an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Verification failed: $result')),
          );
        }
      } catch (error) {
        // Handle the error here, for example, show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Verification failed: $error')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Customer ID cannot be empty')),
      );
    }
  }*/
  void _onVerifyCustomerIdClicked(BuildContext context, WidgetRef ref) async {
    final customerId = _customerIdController.text;
    if (customerId.isNotEmpty) {
      final verifyCustomerUseCase = ref.read(verifyCustomerUseCaseProvider);
      // Hide the soft keyboard
      FocusScope.of(context).unfocus();
      // Show progress indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        // prevent dismissing the dialog by tapping outside
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      try {
        final result = await verifyCustomerUseCase.execute(customerId);
        Navigator.pop(context); // Hide progress indicator

        if (result is CustomerDetailModel) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Customer verified: $result')),
          );
          /*Navigator.pushNamed(
          context,
          AppRoutes.privacyPolicyScreen,
        );*/
        } else if (result is String) {
          // Handle the case when the result is an error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Verification failed: $result')),
          );
        }
      } on CustomerNotFoundException catch (_) {
        // Handle the case where the customer is not found
        Navigator.pop(context); // Hide progress indicator
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Customer not found')),
        );
      } catch (error) {
        // Handle other errors
        Navigator.pop(context); // Hide progress indicator
        FocusScope.of(context).unfocus();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Verification failed: $error')),
        );
        FocusScope.of(context).unfocus();
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Customer ID cannot be empty')),
      );
    }
  }
}
