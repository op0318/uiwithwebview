import 'package:flutter/material.dart';
import 'package:uiwithwebview/Ex1.dart';
import 'package:uiwithwebview/Ex3.dart';

import 'Ex2.dart';



class bks extends StatefulWidget {
  const bks({Key? key}) : super(key: key);

  @override
  State<bks> createState() => _bksState();
}

class _bksState extends State<bks> {
  String? selectedvalue;
  List dropdownvalue=['one','two','three','four'];
   List list=['1M','2M','1Y','2Y','3Y','CUSTOM'];




  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
        child: Padding(padding:EdgeInsets.only(left: 10,right: 10) ,
          child: Column(children: [
          ex1(),
          secondexpand(),
        thirdexpand()]),
        ),
      ),
    );
  }
}
