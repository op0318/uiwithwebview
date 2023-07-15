import 'package:flutter/material.dart';

class ex1 extends StatelessWidget {
  const ex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var  height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;

    return   Expanded(flex: 2,
        child: Container(width: double.infinity,height: double.infinity,
          color: Colors.white,
          child: Padding(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Live Gold Trends',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),SizedBox(height: 10,),
              Row(
                children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,border: Border.all(color: Colors.purple)),
                    height:height*0.07,width: width*0.30,
                    child: Stack(
                      children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding:EdgeInsets.only(top: 5,left: 10),
                              child: Row(
                                children: [
                                  Text('Gold Buy Rate',style: TextStyle(fontSize: 12,)),SizedBox(width:10,),Icon(size: 13,
                                      Icons.arrow_forward_ios)
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 7,left: 10),
                            child: Row(
                              children: [
                                Text('5,220.89 ',style: TextStyle(fontSize: 15,
                                    color: Colors.green,fontWeight: FontWeight.bold),),
                                Icon(Icons.arrow_upward,size: 16,color: Colors.green,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),),SizedBox(width: 7,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,border: Border.all(color: Colors.grey)),
                    height:height*0.07,width: width*0.30,
                    child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(top: 5,left: 10),
                            child: Row(
                              children: [
                                Text('LMBA Rate',style: TextStyle(fontSize: 12)),SizedBox(width:10,),Icon(size: 12,color: Colors.green,
                                    Icons.arrow_forward_ios)
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,left: 10),
                          child: Row(
                            children: [
                              Text('#1089/oz ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                              Icon(color: Colors.green,
                                Icons.arrow_upward,size: 13,)
                            ],
                          ),
                        )
                      ],
                    ),),SizedBox(width: 7),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,border: Border.all(color: Colors.grey)),
                    height:height*0.07,width: width*0.30,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(top: 5,left: 10),
                            child: Row(
                              children: [
                                Text('Dollar rate',style: TextStyle(fontSize: 12)),SizedBox(width:10,),Icon(size: 13,
                                    Icons.arrow_forward_ios)
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,left: 10),
                          child: Row(
                            children: [
                              Text('5220.89',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                              Icon(Icons.arrow_upward,size: 13,color: Colors.green,)
                            ],
                          ),
                        )
                      ],
                    ),)],)
            ],
          ),
              padding: EdgeInsets.only(top: height*0.03,)),));
  }
}
