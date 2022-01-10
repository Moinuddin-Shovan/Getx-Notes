import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_sqflite/ui/theme.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDark';

  _saveThemeState(bool isDark) => _box.write(_key, isDark);

  bool _loadThemeState() => _box.read(_key) ?? false;

  ThemeMode get theme => _loadThemeState() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    Get.changeThemeMode(_loadThemeState() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeState(!_loadThemeState());
  }
}
