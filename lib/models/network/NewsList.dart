import '../IModel.dart';

class NewsList extends IModel{
  String key;
  List<News> datas;

  NewsList({this.datas});

  NewsList.fromJson(String key, Map<String, dynamic> json) {
    if (json[key] != null) {
      this.key = key;
      datas = List<News>();
      json[key].forEach((v) {
        datas.add(News.fromJson(v));
      });
    }
  }
}

class News {
  String template;
  String skipID;
  String lmodify;
  String postid;
  String source;
  String title;
  String mtime;
  int hasImg;
  String topicBackground;
  String digest;
  String photosetID;
  String boardid;
  String alias;
  int hasAD;
  String imgsrc;
  String ptime;
  String daynum;
  int hasHead;
  int imgType;
  int order;
  int votecount;
  bool hasCover;
  String docid;
  String tname;
  int priority;
  List<Ads> ads;
  String ename;
  int replyCount;
  Picinfo picinfo;
  int imgsum;
  bool hasIcon;
  String skipType;
  String category;
  String cid;
  String url;
  String url_3w;

  News(
      {this.template,
      this.skipID,
      this.lmodify,
      this.postid,
      this.source,
      this.title,
      this.mtime,
      this.hasImg,
      this.topicBackground,
      this.digest,
      this.photosetID,
      this.boardid,
      this.alias,
      this.hasAD,
      this.imgsrc,
      this.ptime,
      this.daynum,
      this.hasHead,
      this.imgType,
      this.order,
      this.votecount,
      this.hasCover,
      this.docid,
      this.tname,
      this.priority,
      this.ads,
      this.ename,
      this.replyCount,
      this.picinfo,
      this.imgsum,
      this.hasIcon,
      this.skipType,
      this.category,
      this.cid,
      this.url,
      this.url_3w});

  News.fromJson(Map<String, dynamic> json) {
    template = json['template'];
    skipID = json['skipID'];
    lmodify = json['lmodify'];
    postid = json['postid'];
    source = json['source'];
    title = json['title'];
    mtime = json['mtime'];
    hasImg = json['hasImg'];
    topicBackground = json['topic_background'];
    digest = json['digest'];
    photosetID = json['photosetID'];
    boardid = json['boardid'];
    alias = json['alias'];
    hasAD = json['hasAD'];
    imgsrc = json['imgsrc'];
    ptime = json['ptime'];
    daynum = json['daynum'];
    hasHead = json['hasHead'];
    imgType = json['imgType'];
    order = json['order'];
    votecount = json['votecount'];
    hasCover = json['hasCover'];
    docid = json['docid'];
    tname = json['tname'];
    priority = json['priority'];
    if (json['ads'] != null) {
      ads = List<Ads>();
      json['ads'].forEach((v) {
        ads.add(Ads.fromJson(v));
      });
    }
    ename = json['ename'];
    replyCount = json['replyCount'];
    picinfo =
        json['picinfo'] != null ? Picinfo.fromJson(json['picinfo']) : null;
    imgsum = json['imgsum'];
    hasIcon = json['hasIcon'];
    skipType = json['skipType'];
    category = json['category'];
    cid = json['cid'];
    url = json['url'];
    url_3w = json['url_3w'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['template'] = this.template;
    data['skipID'] = this.skipID;
    data['lmodify'] = this.lmodify;
    data['postid'] = this.postid;
    data['source'] = this.source;
    data['title'] = this.title;
    data['mtime'] = this.mtime;
    data['hasImg'] = this.hasImg;
    data['topic_background'] = this.topicBackground;
    data['digest'] = this.digest;
    data['photosetID'] = this.photosetID;
    data['boardid'] = this.boardid;
    data['alias'] = this.alias;
    data['hasAD'] = this.hasAD;
    data['imgsrc'] = this.imgsrc;
    data['ptime'] = this.ptime;
    data['daynum'] = this.daynum;
    data['hasHead'] = this.hasHead;
    data['imgType'] = this.imgType;
    data['order'] = this.order;
    data['votecount'] = this.votecount;
    data['hasCover'] = this.hasCover;
    data['docid'] = this.docid;
    data['tname'] = this.tname;
    data['priority'] = this.priority;
    if (this.ads != null) {
      data['ads'] = this.ads.map((v) => v.toJson()).toList();
    }
    data['ename'] = this.ename;
    data['replyCount'] = this.replyCount;
    if (this.picinfo != null) {
      data['picinfo'] = this.picinfo.toJson();
    }
    data['imgsum'] = this.imgsum;
    data['hasIcon'] = this.hasIcon;
    data['skipType'] = this.skipType;
    data['category'] = this.category;
    data['cid'] = this.cid;
    return data;
  }
}

class Ads {
  String subtitle;
  String skipType;
  String skipID;
  String tag;
  String title;
  String imgsrc;
  String url;

  Ads(
      {this.subtitle,
      this.skipType,
      this.skipID,
      this.tag,
      this.title,
      this.imgsrc,
      this.url});

  Ads.fromJson(Map<String, dynamic> json) {
    subtitle = json['subtitle'];
    skipType = json['skipType'];
    skipID = json['skipID'];
    tag = json['tag'];
    title = json['title'];
    imgsrc = json['imgsrc'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['subtitle'] = this.subtitle;
    data['skipType'] = this.skipType;
    data['skipID'] = this.skipID;
    data['tag'] = this.tag;
    data['title'] = this.title;
    data['imgsrc'] = this.imgsrc;
    data['url'] = this.url;
    return data;
  }
}

class Picinfo {
  String firstImage;

  Picinfo({this.firstImage});

  Picinfo.fromJson(Map<String, dynamic> json) {
    firstImage = json['firstImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['firstImage'] = this.firstImage;
    return data;
  }
}
