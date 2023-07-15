import 'package:flutter/material.dart';

class buygold extends StatelessWidget {
  const buygold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return   Expanded(flex: 4,
        child: Container(color: Colors.white,
        child: Column(children: [
          Card(elevation: 3,
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(padding: EdgeInsets.only(top: 8,left: 20,right: 10),
                    child: Image.asset(height: 50,width: 50,'assets/images/gold1.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 2.5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ Text('Sell Old Gold',style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold ),),
                  Text('Sell your old jwellery for markets'),
                  Text('best price')],),
                ),
                SizedBox(width: width*0.1,),Icon(Icons.arrow_forward_ios_rounded)],




              ),
            height:height*0.08 ,width: double.infinity,
            color: Color.fromRGBO(255, 215, 181, 0.3),
          ),), Padding(padding: EdgeInsets.all(2),
            child: Card(elevation: 3,
              child: Container(child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(padding: EdgeInsets.only(left: 20,right: 10),
                    child: Image.asset(height: 50,width: 50,'assets/images/gold2.png')),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 2.5),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ Text('Gold Saving plan',style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold ),),
                        Text('Sell your old jwellery for markets'),
                        Text('best price'),
                      ],),
                    
                  ),SizedBox(width: height*0.05,),Icon(Icons.arrow_forward_ios_rounded)],




              ),
              height:height*0.08 ,width: double.infinity,
              color: Color.fromRGBO(230, 208, 255, 0.5),
            ),),
          ), Padding(padding: EdgeInsets.all(3),
            child: Card(elevation: 2,
              child: Container(child: Row(
                children: [Padding(padding: EdgeInsets.only(left: 20,right: 10),
                    child: Image.asset(height: 50,width: 50,'assets/images/gold3.png')),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 2.5),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ Text('Bid by Gold',style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold ),),
                        Text('Sell your old jwellery for markets'),
                        Text('best price'),],),
                  ),SizedBox(width: width*0.1,),Icon(Icons.arrow_forward_ios_outlined)],
              ),
              height:height*0.08 ,width: double.infinity,
              color: Color.fromRGBO(255, 218, 254, 0.6),
            ),),
          )
        ,Padding(padding: EdgeInsets.only(top: 15,bottom: 10),
          child: Container(height:height*0.06 ,width:width*0.8 ,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(103,49,71,1 ))),
                    onPressed: (){}, child: Text('BUY GOLD'))),
        ),]),));
  }
}
