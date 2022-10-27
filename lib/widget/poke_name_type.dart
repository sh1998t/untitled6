import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/consts/consts.dart';
import 'package:untitled6/import/pekemint.dart';
class PokeNameType extends StatelessWidget {
 final  PokemonModel pokemonModel;
  const PokeNameType({Key? key,required this.pokemonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0.02.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(pokemonModel.name?? " ",style: Consts.textStyle(),),
                Text("#${pokemonModel.num}",style:Consts.textStyle() ),
              ],
            ),
            SizedBox(height: 0.02.sh,),
            Chip(label: Text(pokemonModel.type?.join(" ,")?? " ",style: Consts.textChipStyle(),))
          ],
      ),
    );
  }
}
