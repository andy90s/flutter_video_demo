import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/model/language.dart';
import 'package:flutter_palyer_demo/util/sp_util.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class LocaleOptions {
  static updateLocale(Language language) {
    Locale? locale;
    if (language.language == '' || language.country == '') {
      locale = Get.deviceLocale;
    } else {
      locale = Locale(language.language);
    }
    if (locale != null) {
      Get.updateLocale(locale);
    }
  }

  static getDefault() {
    var language = SpUtil.getLanguage();
    if (language == null || language.language == '' || language.country == '') {
      return Get.deviceLocale;
    } else {
      return Locale(language.language);
    }
  }
}
