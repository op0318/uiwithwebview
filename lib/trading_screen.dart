
import 'package:flutter/material.dart';
import 'package:uiwithwebview/rating_modal.dart';
import 'package:uiwithwebview/rating_widget.dart';

import 'buygold.dart';
import 'chart_widget_screen.dart';

Color darkPinkColor = const Color(0xffA70032);

class TradingScreen extends StatelessWidget {
  TradingScreen({Key? key}) : super(key: key);

  List<Ratings> ratingModal = [
    Ratings(name: "Gold Buy Rate", range: "5,220.89"),
    Ratings(name: "LBMA Rate", range: "1089/oz"),
    Ratings(name: "Dollar Rate", range: "87.72"),
    Ratings(name: "Gold Buy Rate", range: "899.72"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text(
          "Live Gold Trends",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SafeArea(child: _tradingWidget(context)),
      ),
    );
  }

  Widget _tradingWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [ListView(
          children: [ratingWidget(context, ratingModal), ChartWidget(), buygold(),_buttonBuyGold(context)],
        ),
      ]),
    );
  }
  
  Widget _buttonBuyGold(BuildContext context){
    return  Padding(
      padding: EdgeInsets.only(top: 15, bottom: 10,left: 20,right: 20),
      child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: 40,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(103, 49, 71, 1))),
              onPressed: () {},
              child: Text('BUY GOLD'))),
    );
  }


}
