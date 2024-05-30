import 'package:flutter/material.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/di/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const UnoPoint());
}

class UnoPoint extends StatelessWidget {
  const UnoPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
