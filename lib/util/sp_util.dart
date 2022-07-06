import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_palyer_demo/model/language.dart';
import 'package:flutter_palyer_demo/util/sp_key.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpUtil {
  static updateLanguage(Language language) {
    Get.find<SharedPreferences>().remove(SPKey.language);
    Get.find<SharedPreferences>()
        .setString(SPKey.language, jsonEncode(language.toJson()));
  }

  static Language? getLanguage() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getString(SPKey.language);
      if (json == null) {
        return null;
      } else {
        return Language.fromJson(jsonDecode(json));
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
