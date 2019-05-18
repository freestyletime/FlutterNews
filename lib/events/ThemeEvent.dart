import 'IEvent.dart';

class ThemeEvent extends IEvent{
  int themeModel;

  ThemeEvent(int themeModel) : super(""){
    this.themeModel = themeModel;
  }
}