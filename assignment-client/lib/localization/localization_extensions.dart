import 'dart:io';

import 'package:assignment_client/localization/en_strings.dart';

extension LocalizationExtensionMethods on String {
  String get localize {
    if (Platform.localeName.startsWith('en')) {
      return EnStrings.translations[this] ?? this;
    }
    // Implement other languages
    return this;
  }
}
