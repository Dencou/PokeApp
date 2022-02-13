import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokede_app/Services/PokeService.dart';
import 'package:pokede_app/Stores/ability.dart';
import 'package:pokede_app/Stores/pokemons.dart';
import 'package:snack/snack.dart';

class DetailedPokemonPage extends StatefulWidget{
  @override
  _DetailedPokemonPage createState() => _DetailedPokemonPage();




}
class _DetailedPokemonPage extends State<DetailedPokemonPage>{

  Future submit()async{
    await pokeService.typeSW();
    setState(() {
    });
  }

  @override
  void initState() {
    submit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Pokedex'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [

                      Text(pokeStore.pokemonName.toUpperCase(), style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Container(
                              width: 185,
                              height: 150,
                              child: Container(width: 130, height: 130, child: Image.network(pokeStore.spriteFront, fit: BoxFit.fill,),)
                          ),
                          Container(
                            width: 185,
                            height: 150,
                            child: Center(
                                child: Container(width: 150, height: 150, child: Image.network(pokeStore.spriteBack, fit: BoxFit.fill,),)
                            ),

                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: pokeService.getTypeList(),),
                      Text('Abilities:',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: pokeStore.abilities.map((ability) => Text('${ability.name}      '),).toList(),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  decoration:
                  
                  BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1,2),
                      blurRadius: 1,
                    )]
                  ),
                  
                  child: Column(
                    children: [
                      Text('Weak against',style: TextStyle(color:Colors.black,fontSize: 18),),
                      Divider(
                        thickness: 2,
                        endIndent: 30,
                        indent: 30,
                      ),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index)=> Divider(),
                        itemCount: pokeStore.doubleDamageFrom.length,
                        itemBuilder: (BuildContext context, int index){
                          return  Padding(padding: EdgeInsets.all(16),child: Text('${pokeStore.doubleDamageFrom[index]}',style: TextStyle(fontSize: 14),),);
                        },
                      ),
                    ],
                  )
                ),

                SizedBox(height: 25,),

                Container(
                    width: double.infinity,
                    decoration:

                    BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1,2),
                          blurRadius: 1,
                        )]
                    ),

                    child: Column(
                      children: [
                        Text('Strong against',style: TextStyle(color:Colors.black,fontSize: 18),),
                        Divider(
                          thickness: 2,
                          endIndent: 30,
                          indent: 30,
                        ),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index)=> Divider(),
                          itemCount: pokeStore.doubleDamageTo.length,
                          itemBuilder: (BuildContext context, int index){
                            return  Padding(padding: EdgeInsets.all(16),child: Text('${pokeStore.doubleDamageTo[index]}',style: TextStyle(fontSize: 14),),);
                          },
                        ),
                      ],
                    )
                ),
              ],
            )
        ),
      )
    );
  }

}