import 'package:base_app/pages/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
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

    print(context.locale.toString());

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage()
    );
  }
}

