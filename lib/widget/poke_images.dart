
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/consts/ui_helper.dart';
import 'package:untitled6/import/pekemint.dart';
class PokemonImages extends StatelessWidget {
  final PokemonModel pokemonModel ;
  const PokemonImages({Key? key, required this.pokemonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/pokeball.png',
              width: UiHelper.calculatePoleImgAndblalSize(),
              height:  UiHelper.calculatePoleImgAndblalSize(),
              fit: BoxFit.fitHeight,
            ),
          ),
         Align(
           alignment: Alignment.topRight,
           child: CachedNetworkImage(
               imageUrl : pokemonModel.img?? '' ,
             width: UiHelper.calculatePoleImgAndblalSize(),
             height:  UiHelper.calculatePoleImgAndblalSize(),
             fit: BoxFit.fitHeight,
             placeholder: ((context, url) => CircularProgressIndicator(
               color: UiHelper.getColorFromType(pokemonModel.type![0]),
             )),
              ),
         ),

        ],
      ),
    );
  }
}
