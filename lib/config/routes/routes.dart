import 'package:flutter/material.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/pages/background_location_access_screen.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/pages/terms_and_condition_screen.dart';
import 'package:uno_point_flutter_poc/features/introduction/presentation/pages/welcome_screen.dart';

class AppRoutes {
  static const String homeScreen = '/WelcomeScreen';
  static const String privacyPolicyScreen = '/PrivacyPolicy';
  static const String backgroundLocationAccessScreen = '/BackgroundLocationAccess';
  static const String customerIdInputScreen = '/CustomerIdInput';
  static const String mobileNumberInputScreen = '/MobileNumberInput';
  static const String otpInputScreen = '/OtpInput';

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
      case privacyPolicyScreen:
      case backgroundLocationAccessScreen:
      case customerIdInputScreen:
      case mobileNumberInputScreen:
      case otpInputScreen:
        return _materialRoute(settings);
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _materialRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => _getPageForRoute(settings));
  }

  static Widget _getPageForRoute(RouteSettings settings) {
    // Depending on the route, return the appropriate page/widget
    switch (settings.name) {
      case homeScreen:
        return const WelcomeScreen(); //HomePage();
      case privacyPolicyScreen:
        return const PrivacyPolicyScreen(); //TermsAndConditionPage();
      case backgroundLocationAccessScreen:
        return const BackgroundLocationAccessScreen(); //BackgroundLocationAccessPage();
      case customerIdInputScreen:
        return const MaterialApp(); //CustomerIdInputPage();
      case mobileNumberInputScreen:
        return const MaterialApp(); //MobileNumberInputPage();
      case otpInputScreen:
        return const MaterialApp(); //OtpInputPage();
      default:
        return const MaterialApp(); //ErrorPage();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      ),
    );
  }
}
