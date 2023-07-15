import 'package:flutter/material.dart';
import 'package:uiwithwebview/Liveresults.dart';
import 'package:uiwithwebview/buygold.dart';

import 'webview.dart';



class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
        child: Padding(padding:EdgeInsets.only(left: 10,right: 10) ,
          child: Column(children: [
          Liveresults(),
          webviewchart(),
        buygold()]),
        ),
      ),
    );
  }
}
