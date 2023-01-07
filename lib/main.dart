import 'package:base_app/pages/home/home_page.dart';
import 'package:base_app/settings/project_settings.dart';
import 'package:base_app/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ProjectSettings().getMainData();
  runApp(
    
    EasyLocalization(
      supportedLocales: const [Locale('es', ''),Locale('en', ''), Locale('de', '')],
      path: 'assets/i18n', // <-- change the path of the translation files 
      fallbackLocale: const Locale('es', ''),
      child: const MyApp()

    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: baseTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage()
    );
  }
}

