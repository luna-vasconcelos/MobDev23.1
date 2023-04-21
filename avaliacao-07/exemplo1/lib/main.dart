import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ativ. 7 - Luna Costa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: HomePage(),
    );
  }
}
