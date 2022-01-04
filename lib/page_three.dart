import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  _thirdpageState createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: WebView(
                  initialUrl: "https://arafatkh999.blogspot.com/",
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
