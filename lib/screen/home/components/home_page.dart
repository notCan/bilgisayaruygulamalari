import 'package:flutter/material.dart';
import 'package:managemoneyapp/screen/appbar/components/app_bar.dart';
import 'mainPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MainPage(),
    );
  }
}
