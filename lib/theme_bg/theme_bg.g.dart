// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_bg.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeBg on ThemeBase, Store {
  Computed<ThemeData>? _$themeComputed;

  @override
  ThemeData get theme => (_$themeComputed ??=
          Computed<ThemeData>(() => super.theme, name: 'ThemeBase.theme'))
      .value;

  late final _$_themeAtom = Atom(name: 'ThemeBase._theme', context: context);

  @override
  ThemeData get _theme {
    _$_themeAtom.reportRead();
    return super._theme;
  }

  @override
  set _theme(ThemeData value) {
    _$_themeAtom.reportWrite(value, super._theme, () {
      super._theme = value;
    });
  }

  late final _$ThemeBaseActionController =
      ActionController(name: 'ThemeBase', context: context);

  @override
  void toggleTheme() {
    final _$actionInfo =
        _$ThemeBaseActionController.startAction(name: 'ThemeBase.toggleTheme');
    try {
      return super.toggleTheme();
    } finally {
      _$ThemeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme}
    ''';
  }
}
