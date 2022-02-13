import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokede_app/Pages/DetailedPokemonPage.dart';
import 'package:pokede_app/Services/PokeService.dart';
import 'package:pokede_app/Stores/pokemons.dart';
import 'package:get/get.dart';


class PokeCard extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GestureDetector(
        onTap: ()=>{Get.to(DetailedPokemonPage())},
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[BoxShadow(
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(0,3),
                    blurRadius: 7,
                  )]

              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade200,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all()
                      ),
                      child: Column(
                        children: [
                        Container(
                          width: 180,
                          child: Image.network(pokeStore.spriteFront,fit: BoxFit.fill,),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: pokeService.getTypeList(),),
                      )],)
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(pokeStore.pokemonName.toUpperCase(), style: TextStyle(fontSize: 20),),
                          Text('Number: ${pokeStore.id}'),
                          Text('Tap to see more information about the pokemon!',style: TextStyle(color:Colors.black26,fontSize: 12),)


                        ],
                      )
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }

}