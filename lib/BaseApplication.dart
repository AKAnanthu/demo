

import 'package:design_demo/MainScreen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Bottom Navigation',
        theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: const Color(0xFF1A237E),

          ),
        ),
        home: MainScreen());
  }
}

void main() => runApp(MyApp());