import 'package:flutter/material.dart';
import 'package:gstcalculator/Screens/result.dart';
import 'package:gstcalculator/Theme/AppColor.dart';
import 'package:gstcalculator/Theme/AppTheme.dart';
import 'package:toast/toast.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _quantity = TextEditingController();
  TextEditingController _price = TextEditingController();

  var _gstRate;
  var _gstType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
      child: Scaffold(
        bottomNavigationBar: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          child: Text(
            "Calculate",
            style: AppTheme.mediamTextStyle(
                appSize: MediaQuery.of(context).size,
                fontWeight: FontWeight.bold,
                color: AppColor.fontColor),
          ),
          onPressed: () {
            if (_quantity.text.isNotEmpty) {
              if (_price.text.isNotEmpty) {
                if (_gstRate != null) {
                  if (_gstType != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(getType: "$_gstType",
                          amount: double.parse(_price.text)*double.parse(_quantity.text),gstRate: double.parse(_gstRate),
                        ),
                      ),
                    );
                  } else {
                    Toast.show("Select GST Type", context);
                  }
                } else {
                  Toast.show("Select GST Rate%", context);
                }
              } else {
                Toast.show("Enter GST Price", context);
              }
            } else {
              Toast.show("Enter Product Quantity", context);
            }
          },
          isExtended: true,
          shape: RoundedRectangleBorder(),
        ),
        appBar: AppBar(
          elevation: 1,
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
        body: Container(
          padding: EdgeInsets.all(15),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      //!Quantity
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: _quantity,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (data) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            hintText: 'Quantity',
                            hintStyle: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                                color: Colors.grey),
                          ),
                        ),
                      ),

                      //!Price
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: _price,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (data) {
                            FocusScope.of(context).nextFocus();
                          },
                          style: AppTheme.smallTextStyle(
                              appSize: MediaQuery.of(context).size,
                              color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            hintText: 'Price per item',
                            hintStyle: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                                color: Colors.grey),
                          ),
                        ),
                      ),

                      //!GST rate
                      Container(
                        padding: EdgeInsets.all(10),
                        child: DropdownButton(
                          value: _gstRate,
                          hint: Text(
                            "Select GST rate%",
                            style: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                                color: Colors.grey),
                          ),
                          isExpanded: true,
                          items: ["5", "12", "18", "28"].map((data) {
                            return DropdownMenuItem(
                              child: Text(
                                "$data%",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.black),
                              ),
                              value: "$data",
                            );
                          }).toList(),
                          onChanged: (value) {
                            
                            setState(() {
                              _gstRate = value;
                            });
                            FocusScope.of(context).requestFocus(new FocusNode());
                          },
                        ),
                      ),

                      //!GST type
                      Container(
                        padding: EdgeInsets.all(10),
                        child: DropdownButton(
                          value: _gstType,
                          hint: Text(
                            "GST type",
                            style: AppTheme.smallTextStyle(
                                appSize: MediaQuery.of(context).size,
                                color: Colors.grey),
                          ),
                          isExpanded: true,
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "Include GST",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.black),
                              ),
                              value: "in",
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Excluded  GST",
                                style: AppTheme.smallTextStyle(
                                    appSize: MediaQuery.of(context).size,
                                    color: Colors.black),
                              ),
                              value: "ex",
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              _gstType = value;
                            });
                            FocusScope.of(context).requestFocus(new FocusNode());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
