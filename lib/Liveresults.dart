import 'package:flutter/material.dart';

class Liveresults extends StatelessWidget {
  const Liveresults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_outlined)),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Live Gold Trends',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                       Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey.shade50,
                        border: Border.all(color: Colors.purple),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      // height:height*0.07,
                      // width: width*0.30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              Text('Gold Buy Rate',
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(size: 13, Icons.arrow_forward_ios)
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '5,220.89 ',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_upward,
                                size: 16,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ],
                      )),
                    ],
                   ),

                ],
              )),
        ));
  }
}

