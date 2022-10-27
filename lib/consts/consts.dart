import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Consts{
  Consts._();
  static const String texttitle ='Pekomont';
  static  TextStyle textStyle(){
    return  TextStyle(
      color: Colors.white,
      fontSize: calculateFontSize(32),
      fontWeight: FontWeight.bold,
    );
  }
  static  TextStyle textPokemonStyle(){
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }
  static  TextStyle textChipStyle(){
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
  }
   static calculateFontSize(int size){
   if(ScreenUtil().orientation ==Orientation.portrait){
     return size.sp;
   }else {
     return (size*1.5).sp;
   }
   }
  static  TextStyle textInformationStyle(){
    return  TextStyle(
      color: Colors.black,
      fontSize: calculateFontSize(16),

    );
  }
  static  TextStyle textInformationLabelStyle(){
    return  TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: calculateFontSize(16),

    );
  }
}

