import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_news/constants/Constants.dart';

import 'Newsdetailpage.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("关于"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 55.0,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
              ),
              Text('作者：${Strings.author}',
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(5.0),
              ),
              Text(Strings.des),
              Container(
                padding: EdgeInsets.all(5.0),
              ),
              GestureDetector(
                child: Text(
                  'Github：${Strings.github}',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      decoration:
                          TextDecoration.combine([TextDecoration.underline])),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => NewsDetailPage(
                            postId: "",
                            url: Strings.github,
                            title: Strings.projectAdress,
                          )));
                },
              )
            ],
          ),
        ));
  }
}
