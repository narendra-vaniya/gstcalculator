import 'package:flutter/material.dart';
import 'package:gstcalculator/Theme/AppColor.dart';
import 'package:gstcalculator/Theme/AppTheme.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.fontColor),
        elevation: 0,
        flexibleSpace: AppTheme.appBarStyle,
        title: Text(
          "GST Calculator",
          style: AppTheme.mediamTextStyle(
            color: Colors.white,
            appSize: MediaQuery.of(context).size,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total amount",
                    style: AppTheme.mediamTextStyle(
                        color: AppColor.fontColor,
                        appSize: MediaQuery.of(context).size,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "2000",
                    style: AppTheme.mediamTextStyle(
                        color: AppColor.fontColor,
                        appSize: MediaQuery.of(context).size,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Net amount",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "1904.76",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "CGST",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,
                    ),
                  ),
                  Text(
                    "47.62",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "SGST",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,
                    ),
                  ),
                  Text(
                    "47.62",
                    style: AppTheme.mediamTextStyle(
                      color: AppColor.fontColor,
                      appSize: MediaQuery.of(context).size,
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total GST",
                    style: AppTheme.mediamTextStyle(
                        color: AppColor.fontColor,
                        appSize: MediaQuery.of(context).size,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "95.24",
                    style: AppTheme.mediamTextStyle(
                        color: AppColor.fontColor,
                        appSize: MediaQuery.of(context).size,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
