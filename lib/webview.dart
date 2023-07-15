import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewchart extends StatefulWidget {
  const webviewchart({Key? key}) : super(key: key);

  @override
  State<webviewchart> createState() => _webviewchartState();
}

class _webviewchartState extends State<webviewchart> {
  WebViewController  controller=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://melodic-dango-686aa6.netlify.app/?theme=light')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://melodic-dango-686aa6.netlify.app/?theme=light'));

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Expanded(flex: 4,
        child: Card(elevation: 20,
          child: Container(height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('Gold Rate Trends',style: TextStyle(fontWeight: FontWeight.bold)),
                      ),Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('6 Month  '),
                            Text('(+4.8%)',style: TextStyle(color: Colors.green,fontSize: 15)),
                            Icon(color: Colors.green, Icons.arrow_upward_outlined,size: 17,),
                          ],
                        ),

                      )],
                    ),SizedBox(width: width*0.09,)
                      ,Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          height: height*0.036,width: width*0.35,
                          child: Center(child: Padding(padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text('Chart option',style: TextStyle(color: Colors.grey)),SizedBox(width: 14,),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 40,width: 40,
                            child: Center(child: Image.asset('assets/images/icon.jpg',height: 14,width: 14,))),
                      )
                    ],


                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*1,color: Colors.blueGrey.shade50,
                  child: WebViewWidget(controller: controller,),),
                Container(child:Column(
                  children: [Row(
                    children: [Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)),
                          height:height*0.04 ,width:width*0.08,child:Center(child: Text('1M',style: TextStyle(
                              fontSize: 11,color: Colors.black,fontWeight: FontWeight.bold
                          ),))),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(color: Color.fromRGBO(103, 49, 71, 1),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.08,child:Center(child: Text('6M',style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.08,child:Center(child: Text('1Y',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.08,child:Center(child: Text('2Y',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.08,child:Center(child: Text('3Y',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.08,child:Center(child: Text('5Y',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1)),
                            height:height*0.04 ,width:width*0.15,child:Center(child: Text('Custom',style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.black,fontSize: 11),))),
                      )
                    ],
                  ),
                    Divider(),
                    IntrinsicHeight(
                      child: Row(
                        children: [IntrinsicHeight(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6,left: 5,right: 5),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Live'),SizedBox(height: 3),Text('1957.54',style: TextStyle(fontWeight: FontWeight.bold),)],),
                          ),
                        ),VerticalDivider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 6,left: 5,right: 5),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Open'),SizedBox(height: 3,),Text('1957.54',style: TextStyle(fontWeight: FontWeight.bold),)],),
                          ),VerticalDivider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 6,left: 5,right: 5),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Volum'),SizedBox(height: 3),Text('1957.54',style: TextStyle(fontWeight: FontWeight.bold),)],),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 6,left: 5,right: 5),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Days Range'),SizedBox(height: 3,),Text('1955.17-1987.08',style: TextStyle(fontWeight: FontWeight.bold),)],),
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),),
        ));
  }
}
