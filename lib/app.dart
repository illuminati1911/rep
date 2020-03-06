import 'package:flutter/material.dart';
import 'general/rep_colors.dart';
import 'home.dart';

class RepApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: RepColors.main
      ),
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
