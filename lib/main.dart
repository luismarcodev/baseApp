import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader:
              FileTranslationLoader(fallbackFile: 'es', useCountryCode: true, basePath:"assets/i18n"),
          missingTranslationHandler: (key, locale) {
            print(
                "--- Missing Key: $key, languageCode: ${locale?.languageCode}");
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: FlutterI18n.rootAppBuilder(), //If you want to support RTL.
      title: 'Base app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Base Appp'),
        ),
        body:  Center(
          child: Text(
            FlutterI18n.translate(context, 'common.hello'),
            ),
        ),
      ),
    );
  }
}
