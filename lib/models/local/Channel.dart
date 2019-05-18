import '../IModel.dart';

class Channel extends IModel{
  String channelName;
  String channelType;
  String channelId;

  Channel({this.channelName, this.channelType, this.channelId});

  Channel.fromJson(Map<String, dynamic> json) {
    channelName = json['channel_name'];
    channelType = json['channel_type'];
    channelId = json['channel_id'];
  }
}