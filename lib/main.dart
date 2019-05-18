import 'package:flutter/material.dart';
import 'package:flutter_news/constants/Constants.dart';

import 'events/ThemeEvent.dart';
import 'pages/HomePage.dart';

void main() => runApp(FlutterNews());

class FlutterNews extends StatefulWidget {
  @override
  _FlutterNewsState createState() => _FlutterNewsState();
}

class _FlutterNewsState extends State<FlutterNews> {

  @override
  void initState() {
    super.initState();
    Constants.eventBus.on<ThemeEvent>().listen((event) {
      setState(() {
        //TODO 应该添加至SP中持久化，待下次进入时使用
        Constants.currentTheme = event.themeModel;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Constants.currentTheme == Constants.dayTheme
        ? ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue,
            accentColor: Colors.orangeAccent)
        : ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.cyan);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(),
    );
  }
}
