import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper{
  UiHelper._();
  static double getAppTitleWidget() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.15.sh.sw;
    } else {
      return 0.15.sh.sw;
    }
  }
  static EdgeInsets getDefualtPadding(){
    if(ScreenUtil().orientation== Orientation.portrait){
      return EdgeInsets.all(12.h);
    }else{
      return EdgeInsets.all(8.h);
    }
  }
  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }


  static double calculatePoleImgAndblalSize(){
    if(ScreenUtil().orientation== Orientation.portrait){
      return 0.2.sw;
    }else{
      return 0.3.sh;
    }
}
  static EdgeInsets getDefualtIconPadding(){
    if(ScreenUtil().orientation== Orientation.portrait){
      return EdgeInsets.all(10.h);
    }else{
      return EdgeInsets.all(8.h);
    }
  }
}