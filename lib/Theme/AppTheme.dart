import 'package:flutter/material.dart';
import 'package:gstcalculator/Theme/AppColor.dart';
import 'package:gstcalculator/Utilities/AppWidgetSize.dart';

class AppTheme{

  static ThemeData themeData = ThemeData(
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );

  //!Appbar shade style
  static Widget appBarStyle = Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColor.greenShadeTwo,
          AppColor.greenShadeOne,
        ],
      ),
    ),
  );

   //!Small Text style
  static TextStyle smallTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: 'NunitoSans',
      fontWeight: fontWeight,
      fontSize: AppWidgetSize.getResponsiveWidth(appSize, 12.0),
    );
  }

  //!Mediam Text style
  static TextStyle mediamTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: 'NunitoSans',
      fontWeight: fontWeight,
      fontSize: AppWidgetSize.getResponsiveWidth(appSize, 15.0),
    );
  }

  //!Large Text style
  static TextStyle largeTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: 'NunitoSans',
      fontWeight: fontWeight,
      fontSize: AppWidgetSize.getResponsiveWidth(appSize, 18.0),
    );
  }
}

