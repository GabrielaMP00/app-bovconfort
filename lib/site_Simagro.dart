import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SiteSimagro extends StatelessWidget {
  final String url;

  SiteSimagro({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
      ),
      body: WebView(
        initialUrl: Uri.dataFromString(url, mimeType: 'text/html').toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
