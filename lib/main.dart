import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Website to Applicaton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: web2app(),
    );
  }
}

class web2app extends StatelessWidget {
  const web2app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Website to Application'),
        centerTitle: true,
      ),
      body:
          // ListView.builder(
          //       itemCount: 10,
          //       itemBuilder: (ctx, index) => Container(
          //             child: Text('item1'),
          //           )),
          // );
          WebView(
        initialUrl: 'https://www.olx.com.pk/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
