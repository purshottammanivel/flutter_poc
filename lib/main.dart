import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uno_point_flutter_poc/config/routes/routes.dart';
import 'package:uno_point_flutter_poc/config/theme/app_theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: UnoPoint(),
    ),
  );
}

class UnoPoint extends StatelessWidget {
  const UnoPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final appTheme = ref.watch(unoPointThemeDataProvider);
        return MaterialApp(
          initialRoute: AppRoutes.homeScreen,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          theme: appTheme.lightTheme,
          darkTheme: appTheme.darkTheme,
          themeMode: ThemeMode.system,
        );
      },
    );
  }
}
