


import 'package:flutter/material.dart';
import 'package:uiwithwebview/rating_modal.dart';
import 'package:uiwithwebview/trading_screen.dart';

Widget ratingWidget(BuildContext context,List<Ratings> ratingModal  ) {
  return Container(
    height: 60,
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ratingModal.length, // Replace with your actual item count
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade50,
                  border: Border.all(
                    color: index == 0 ? darkPinkColor : Colors.grey.shade200,
                  ),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(left: 10,top: 6),

                // height:height*0.07,
                // width: width*0.30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children:  [
                        Text("${ratingModal[index].name}",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
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
                          "${ratingModal[index].range}",
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
                )
            ),
              Positioned(
                top: 0,
                left: 25,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.greenAccent.shade100,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:5,
                        width: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 3,),
                      const Text(
                        "Live",
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.green,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),],
          );
        }),
  );
}
