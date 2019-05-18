import 'package:flutter_news/constants/Constants.dart';
import 'package:flutter_news/events/BeanEvent.dart';
import 'package:flutter_news/models/network/NewsList.dart';

import 'Network.dart';
import 'dart:convert';

/* 网易新闻网络请求API*/
class API$Neteast {
  //1. 请求新闻列表接口
  getNewsList(String type, String id, int startPage) {
    String url = NetWork.NETEAST_HOST + 'nc/article/$type/$id/$startPage-20.html';
    NetWork.get(url).then((data) {
      if (data != null) {
        Map<String, dynamic> map = json.decode(data);
        Constants.eventBus.fire(BeanEvent<NewsList>(id, NewsList.fromJson(id, map)));
      }
    });
  }

  //2. 请求新闻内容详情接口
  getNewsDetail(String postId){
    String url = NetWork.NETEAST_HOST + 'nc/article/nc/article/$postId/full.html';
    NetWork.get(url).then((data) {
      if (data != null) {
        Map<String, dynamic> map = json.decode(data);
        // Constants.eventBus.fire(BeanEvent<NewsList>(id, NewsList.fromJson(id, map)));
      }
    });
  }
}

/* 新浪新闻网络请求API*/
class API$Sina {}

/* 天气信息的网络请求API*/
class API$Weather {}
