import 'package:flutter/material.dart';
import 'package:gstcalculator/Theme/AppColor.dart';
import 'package:gstcalculator/Theme/AppTheme.dart';

class ResultPage extends StatefulWidget {
 double amount;
  double gstRate;
  String getType;
  ResultPage({this.amount,this.gstRate,this.getType});
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double netPrice=0;
  double totalGst=0;
  double totalAmount=0;
 @override
  void initState() {
    setState(() {
      if(widget.getType=="in"){
         totalGst =(widget.amount*widget.gstRate)/(widget.gstRate+100);
         netPrice= widget.amount- totalGst;
        totalAmount=widget.amount;
       
      }else{
        totalGst = (widget.amount*widget.gstRate)/100;
        netPrice=widget.amount;
        totalAmount = widget.amount+totalGst;
      } 
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
      child: Scaffold(
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
                      "${totalAmount.toStringAsFixed(2)}",
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
                      "${netPrice.toStringAsFixed(2)}",
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
                      "${(totalGst/2).toStringAsFixed(2)}",
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
                      "${(totalGst/2).toStringAsFixed(2)}",
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
                      "${totalGst.toStringAsFixed(2)}",
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
      ),
    );
  }
}
