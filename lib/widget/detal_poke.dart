import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/consts/ui_helper.dart';
import 'package:untitled6/import/pekemint.dart';
import 'package:untitled6/widget/poke_information.dart';
import 'package:untitled6/widget/poke_name_type.dart';
class DetailPage extends StatelessWidget {
final  PokemonModel pokemonModel;
  const DetailPage({Key? key,required this.pokemonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemonModel.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UiHelper.getDefualtIconPadding(),
              child: IconButton(
                  iconSize: 16.h,
                  onPressed: () {
                Navigator.of(context).pop();
              },

        icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(pokemonModel: pokemonModel),
            SizedBox(
              height: 20.h,
            ),
            Expanded(child: Stack(
              children: [
                Hero(
                  tag: pokemonModel.id!,
                  child: Positioned(child: Image.asset('assets/pokeball.png',
                  height: 0.15.sh,
                    fit: BoxFit.fitHeight,
                  ),
                  right: 0,
                    top: 0,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.12.sh,
                    child:
                PokeInformation(pokemonModel: pokemonModel)
                ),
                Align(
                  alignment: Alignment.topCenter,
                child: Hero(
                  tag: pokemonModel.id!,
                  child: CachedNetworkImage(
                    imageUrl: pokemonModel.img?? "",
                    height: 0.25.sh,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
