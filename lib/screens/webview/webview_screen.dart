import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/newspaper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  static const routeName = "/webview";
  const WebViewScreen({Key key}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  bool _isLoading = true;
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    NewsPaper newsPaper =
        ModalRoute.of(context).settings.arguments as NewsPaper;
    print(newsPaper.link);
    return Scaffold(
        appBar: AppBar(
          title: Text(newsPaper.title),
        ),
        body: Stack(children: [
          WebView(
            initialUrl: "https://" + newsPaper.link,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              _controller = controller;
            },
            onPageFinished: (finish) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          _isLoading ? Center(child: CircularProgressIndicator()) : Container()
        ]));
  }
}
