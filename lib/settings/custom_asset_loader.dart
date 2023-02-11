import 'package:base_app/settings/project_settings.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    try {
      final url =
          'https://objetivoweb.es/base_app/i18n/${locale.languageCode}.json';

      final data = await Dio().get(url).then(
            (response) => response.data,
          );
      ProjectSettings().setTopics(data['topics']);
      return data;
    } catch (e) {
      return Future.value();
    }
  }
}
