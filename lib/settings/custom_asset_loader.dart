import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    try {
      final url =
          'https://objetivoweb.es/base_app/i18n/${locale.languageCode}.json';
      return Dio().get(url).then(
            (response) => response.data,
          );
    } catch (e) {
      return Future.value();
    }
  }
}
