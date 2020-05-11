import 'package:flutter/material.dart';
import 'package:gstcalculator/Screens/splashScreen.dart';
import 'package:gstcalculator/Theme/AppTheme.dart';

void main()=>runApp(GSTCalCulator());

class GSTCalCulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}