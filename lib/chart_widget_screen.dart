
import 'package:flutter/material.dart';
import 'package:uiwithwebview/rating_modal.dart';
import 'package:uiwithwebview/trading_screen.dart';
import 'package:uiwithwebview/webview.dart';

class ChartWidget extends StatelessWidget {
  ChartWidget({Key? key}) : super(key: key);

  List<String> dateRange = ["1M", "6M", "1Y", "2Y", "5Y", "Custom"];

  List<Ratings> ratingModal = [
    Ratings(name: "Live", range: "1957.54"),
    Ratings(name: "LBMA Rate", range: "1957.76"),
    Ratings(name: "Dollar Rate", range: "97.069K"),
    Ratings(name: "Gold Buy Rate", range: "1955.17 - 1987.08"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(
        15.0,
      ),
      child: Card(
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_titleWidget(context), _chatOption()],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 200,

                  child: webviewchart(),
                ),
              ),
              _customMonthRange(context),
              SizedBox(
                height: 5,
              ),
              const Divider(),
              SizedBox(
                height: 5,
              ),
              liveDetailsWidget(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Gold Trade Rate",
            style: TextStyle(fontSize: 12, color: Colors.grey)),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1.90.09",
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
    );
  }

  Widget _chatOption() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Chat Option",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.grey,
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.add_box_outlined,
          size: 20,
          color: darkPinkColor,
        )
      ],
    );
  }

  Widget _customMonthRange(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dateRange.length, // Replace with your actual item count
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                    color: index == 1
                        ? Color.fromRGBO(103, 49, 71, 1)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1)),
                child: Text(
                  textAlign: TextAlign.center,
                  "${dateRange[index]}",
                  style: TextStyle(
                      color: index == 1 ? Colors.white : Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ));
          }),
    );
  }

  Widget liveDetailsWidget(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ratingModal.length, // Replace with your actual item count
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(right: 25),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(ratingModal[index].name,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ratingModal[index].range,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  ),
                  const VerticalDivider()
                ],
              ),
            );
          }),
    );
  }
}
