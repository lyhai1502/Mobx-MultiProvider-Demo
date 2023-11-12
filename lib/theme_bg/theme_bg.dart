import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_bg.g.dart';

class ThemeBg = ThemeBase with _$ThemeBg;

abstract class ThemeBase with Store {
  @observable
  ThemeData _theme = ThemeData.light();

  @computed
  ThemeData get theme => _theme;

  @action
  void toggleTheme() {
    final isLight = _theme == ThemeData.light();
    if (isLight) {
      _theme = ThemeData.dark();
    } else {
      _theme = ThemeData.light();
    }
  }
}
