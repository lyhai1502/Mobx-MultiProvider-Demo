import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/counter/counter.dart';
import 'package:mobx_demo/theme_bg/theme_bg.dart';
import 'package:mobx_demo/widget/counter_widget.dart';
import 'package:mobx_demo/widget/theme_button_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<Counter>(create: (_) => Counter()),
          Provider<ThemeBg>(create: (_) => ThemeBg())
        ],
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeBg>(context);
          return Observer(
            builder: (context) => MaterialApp(
              title: 'Flutter Demo',
              theme: themeProvider.theme,
              home: const MyHomePage(title: 'Flutter Demo Home Page'),
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CounterWidget(), ThemeButtonWidget()],
    ));
  }
}
