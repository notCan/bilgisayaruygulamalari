import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:managemoneyapp/constants.dart';

class Input {
  final int anapara = 0;
  final int faizorani = 0;
  final int vade = 0;
}

class InterestRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 100.0),
          height: size.height * 1,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                    padding: EdgeInsets.all(mDefPadding),
                    alignment: Alignment.center,
                    height: size.height * 0.12,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: mPrimaryColor)),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ana Para (lira)'),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (anapara) {
                        print("$anapara");
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 20.0),
                    height: size.height * 0.1,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: mPrimaryColor)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Faiz Oranı (yüzde)'),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (faizorani) {
                          print("$faizorani");
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 20.0),
                    height: size.height * 0.1,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: mPrimaryColor)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Vade (ay)'),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (vade) {
                          print("$vade");
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: size.height * 0.12,
                    width: size.width * 1,
                    child: ButtonTheme(
                      minWidth: size.width * 0.85,
                      height: 50,
                      child: RaisedButton(
                        child: Text('HESAPLA'),
                        color: mPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                elevation: 16,
                                child: Container(
                                  height: size.height * 0.3,
                                  width: size.width * 0.8,
                                  child: ListView(
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Center(
                                        child: Text(
                                          "Vade Sonu Toplam Para",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: mPrimaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
