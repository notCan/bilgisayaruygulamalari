import 'package:flutter/material.dart';
import 'package:managemoneyapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        padding: EdgeInsets.all(mDefPadding),
        height: size.height * 0.27,
        decoration: BoxDecoration(
          color: mPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(36)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: mPrimaryColor.withOpacity(0.2),
            ),
          ],
        ),
        child: ListView(
          children: [
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "CardName".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Balance".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  )),
            ),
          ],
        ),
      ),
    ]);
  }
}
