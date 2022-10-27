import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/consts/ui_helper.dart';
import 'package:untitled6/import/pekemint.dart';

import '../consts/consts.dart';
  class PokeInformation extends StatelessWidget {
   final PokemonModel pokemonModel;
    const PokeInformation({Key? key,required this.pokemonModel}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
              color: Colors.white,
        ),
        child: Padding(
          padding:UiHelper.getDefualtPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             builInformationRow('Name',pokemonModel.name),
             builInformationRow('Height',pokemonModel.height),
             builInformationRow('weight',pokemonModel.weight),
             builInformationRow('spawnTime',pokemonModel.spawnTime),
             builInformationRow('weaknesses',pokemonModel.weaknesses),
             builInformationRow('prev Evolution',pokemonModel.prevEvolution),
             builInformationRow('next Evolution ',pokemonModel.nextEvolution),

            ],
          ),
        ),
      );
    }
    builInformationRow(
        String label,
        dynamic value
        ){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(label,style: Consts.textInformationLabelStyle(),),
    if(value is List && value.isNotEmpty)
      Text(value.join(','),style:Consts.textInformationStyle() ,)
    else if(value==null)
      Text('Not available',style:Consts.textInformationStyle() )
    else Text(value)
  ]
);
    }
  }
