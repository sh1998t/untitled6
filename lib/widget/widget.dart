import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/pekomont/poke_app.dart';
import 'package:untitled6/widget/pokeList_item.dart';

import '../import/pekemint.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late Future<List<PokemonModel>> Listt;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Listt =PekoApp.getPekomot();

 }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: Listt ,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          List<PokemonModel> listem =snapshot.data!;

          return GridView.builder(
            itemCount: listem.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:
            ScreenUtil().orientation == Orientation.portrait? 2:3 ),
            itemBuilder: (context, index) =>
                MyPokemonList(
                    pokemon: listem[index]),);
        }else if(snapshot.hasError){
          return Center(
            child: Text('Hato chiqdi'),
          );
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
