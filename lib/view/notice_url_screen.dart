import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NoticeUrlScreen extends StatefulWidget {
  @override
  State<NoticeUrlScreen> createState() => _NoticeUrlScreenState();
}

class _NoticeUrlScreenState extends State<NoticeUrlScreen> {
  final String url =
      'https://www.inha.ac.kr/kr/950/subview.do?&enc=Zm5jdDF8QEB8JTJGYmJzJTJGa3IlMkY4JTJGMzc3MjMlMkZhcnRjbFZpZXcuZG8lM0ZwYWdlJTNEMSUyNnNyY2hDb2x1bW4lM0QlMjZzcmNoV3JkJTNEJTI2YmJzQ2xTZXElM0QlMjZiYnNPcGVuV3JkU2VxJTNEJTI2cmdzQmduZGVTdHIlM0QlMjZyZ3NFbmRkZVN0ciUzRCUyNmlzVmlld01pbmUlM0RmYWxzZSUyNnBhc3N3b3JkJTNEJTI2';

  WebViewController? _webViewController;

  void initState() {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse(url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -7,
      ),
      body: WebViewWidget(controller: _webViewController!),
    );
  }
}
