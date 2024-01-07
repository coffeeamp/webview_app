import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://www.google.com');

class HomeScreen extends StatelessWidget {
  late final WebViewController controller = WebViewController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text('webview_app',
          style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: (
        WebViewWidget(
          controller: controller,
        )
      ),
    );
  }
}