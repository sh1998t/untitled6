
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/consts/consts.dart';
import 'package:untitled6/consts/ui_helper.dart';

import '../widget/widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return  Material(
      child:Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Stack(
           children: [
             Padding(
               padding:UiHelper.getDefualtPadding(),
               child: Align(
                 alignment: Alignment.topLeft,
                 child: Text(Consts.texttitle,style: Consts.textStyle(),),
               ),
             ),
             Padding(
               padding:UiHelper.getDefualtPadding(),
               child: Align(
                 alignment: Alignment.topRight,
                 child: Image.asset('assets/pokeball.png',
                   width: 100.w,
                   height: 100.w,
                   color: Colors.indigo,
                   fit:BoxFit.fitWidth,
                 ),
               ),
             ),
           ],
          ),
        ],
      )
    );
  }
}