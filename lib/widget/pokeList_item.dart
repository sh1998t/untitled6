import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/consts/ui_helper.dart';
import 'package:untitled6/import/pekemint.dart';
import 'package:untitled6/widget/poke_images.dart';

import '../consts/consts.dart';
import 'detal_poke.dart';
class MyPokemonList extends StatelessWidget {
  final  PokemonModel pokemon ;
  const MyPokemonList({Key? key,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailPage(pokemonModel: pokemon),));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w)
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.getDefualtPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ??' A/n',style: Consts.textPokemonStyle(),),
              Chip(label: Text(
                pokemon.type![0],),),
              Expanded(child: PokemonImages(pokemonModel: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
