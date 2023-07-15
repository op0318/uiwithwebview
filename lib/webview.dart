import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewchart extends StatefulWidget {
  const webviewchart({Key? key}) : super(key: key);

  @override
  State<webviewchart> createState() => _webviewchartState();
}

class _webviewchartState extends State<webviewchart> {
  WebViewController controller = WebViewController()
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
          if (request.url.startsWith(
              'https://melodic-dango-686aa6.netlify.app/?theme=light')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
        Uri.parse('https://melodic-dango-686aa6.netlify.app/?theme=light'));

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return WebViewWidget(controller: controller);
  }
}

