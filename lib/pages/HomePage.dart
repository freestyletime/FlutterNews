import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_news/constants/Constants.dart';
import 'package:flutter_news/events/ThemeEvent.dart';
import 'package:flutter_news/models/local/Channel.dart';
import 'package:flutter_news/widgets/Newslistwidget.dart';

import 'aboutpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
//首页面所有数据的容器
  List<dynamic> newsData;
  //初始化频道数据的容器
  List<Channel> channels;

  TabController _tabController;

  @override
  initState() {
    super.initState();
    _initChannelData();
  }

  @override
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //加载初始化json数据
  _initChannelData() {
    print(" --- 数据初始化 --- ");
    channels = List<Channel>();
    Future<String> data =
        DefaultAssetBundle.of(context).loadString("assets/config/channel.json");
    data.then((String value) {
      setState(() {
        List<dynamic> data = json.decode(value);
        _tabController = TabController(
          vsync: this,
          length: data.length,
        );
        data.forEach((tmp) {
          channels.add(Channel.fromJson(tmp));
        });
      });
    });
  }

  //初始化标题指示条
  Widget _initChannelTitle() {
    return TabBar(
        controller: _tabController,
        indicatorColor: Colors.blue[100],
        tabs: channels.map((Channel channel) {
          return Tab(
            text: channel.channelName,
          );
        }).toList());
  }

  //初始化列表内容
  Widget _initChannelList() {
    return TabBarView(
      controller: _tabController,
      children: channels.map((Channel channel) {
        return NewsListWidget(channel: channel);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: channels.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.title),
          title: Text(Strings.appTitle, style: TextStyle(color: Colors.white)),
          bottom: _initChannelTitle(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.assignment),
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              }),
            ),
            IconButton(
                icon: Icon(Icons.autorenew),
                onPressed: (() {
                  Constants.eventBus.fire(
                      Constants.currentTheme == Constants.dayTheme
                          ? ThemeEvent(Constants.nightTheme)
                          : ThemeEvent(Constants.dayTheme));
                }))
          ],
        ),
        body: _initChannelList(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
