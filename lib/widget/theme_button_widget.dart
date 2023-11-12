import 'package:flutter/material.dart';
import 'package:mobx_demo/theme_bg/theme_bg.dart';
import 'package:provider/provider.dart';

class ThemeButtonWidget extends StatelessWidget {
  const ThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeBg>(context);
    return ElevatedButton(
      onPressed: () {
        theme.toggleTheme();
      },
      child: const Text('Change background'),
    );
  }
}
