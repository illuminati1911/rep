import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'assets/strings.dart';
import 'general/rep_colors.dart';
import 'package:rep/views/dashboard/dashboard.dart';
import 'models/home_state.dart';

class RepApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set statusbar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: RepColors.main
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData(
        primaryColor: RepColors.main,
        accentColor: RepColors.textRed,
        brightness: Brightness.dark
      ),
      home: ChangeNotifierProvider<HomeState>(
        create: (context) => HomeState(),
        child: DashBoard(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
