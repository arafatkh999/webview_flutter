import 'package:class35_practise/page_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        actions: [
          PopupMenuButton(
            onSelected: (val) {
              setState(() {
                switch (val) {
                  case '1':
                    _makePhoneCall('+880111111');
                    break;
                  case '2':
                    _launchInBrowser('https://www.facebook.com/?_rdc=1&_rdr');
                }
              });
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Call us'),
                  value: '1',
                ),
                PopupMenuItem(
                  child: Text('facebook'),
                  value: '2',
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child:ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdpage()));
            },
            child: Text('Blog'),
          )
        ),
      ),
    );
  }
}
