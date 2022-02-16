import 'dart:convert';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config = {};

  static Future<void> initialize() async {
    print("1");
    final configString = await rootBundle.loadString('config/app_config.json');
    print("2");
    _config = json.decode(configString);
  }

  static String getEnvName() {
    return _config['envName'];
  }

  static String getEnvDiscription() {
    return _config['envDiscription'];
  }
}
