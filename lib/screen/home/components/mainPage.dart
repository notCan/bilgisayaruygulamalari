import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:managemoneyapp/constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //!Card Container
          WalletCard(),
          //!Fast Button
          FastButtons(),
          Container(
            height: size.height * 0.384,
            width: size.width * 1,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(36)),
                      color: Colors.green,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 2.5),
                    height: size.height * 0.12,
                    child: Row(
                      children: [
                        //!Product Type
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Sağlık".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        //!Product Price
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "₺900".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(36)),
                      color: Colors.pink,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 2.5),
                    height: size.height * 0.12,
                    child: Row(
                      children: [
                        //!Product Type
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Eğlence".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        //!Product Price
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "₺2500".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(36)),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 2.5),
                    height: size.height * 0.12,
                    child: Row(
                      children: [
                        //!Product Type
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Temizlik".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        //!Product Price
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "₺400".toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FastButtons extends StatelessWidget {
  const FastButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.17,
        width: size.width * 1,
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(mDefPadding),
          child: Row(
            children: [
              Container(
                //!ilk buton
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                margin: EdgeInsets.all(1.0),
                width: size.width * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.add),
                          Text("Gelir"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                //!ikinci buton
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                margin: EdgeInsets.all(1.0),
                width: size.width * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/minus.png"),
                          Text("Gider"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                //!üçüncü buton
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                margin: EdgeInsets.all(1.0),
                width: size.width * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/percent.png"),
                          Text("Faiz"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                //!dördüncü buton
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                margin: EdgeInsets.all(1.0),
                width: size.width * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.credit_card),
                          Text("Taksit"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            padding: EdgeInsets.all(mDefPadding),
            height: size.height * 0.30,
            decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(36)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: mPrimaryColor,
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
                  margin: EdgeInsets.symmetric(vertical: 17.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Balance".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      )),
                ),
                Container(
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/dots.svg"),
                        onPressed: () {},
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
