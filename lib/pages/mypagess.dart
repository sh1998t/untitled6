import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';
import 'myhomepages.dart';

class MyHomePages extends StatelessWidget {
  const MyHomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            MyHome(),
             Expanded(
                 child: MyWidget()),
          ],
        ),
      ),
    );
  }
}
