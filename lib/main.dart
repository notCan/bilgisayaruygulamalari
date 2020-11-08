import 'package:flutter/material.dart';
import 'package:managemoneyapp/constants.dart';
import 'package:managemoneyapp/screen/home/components/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Manager',
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        primaryColor: mPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: mTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
