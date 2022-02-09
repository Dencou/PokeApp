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
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade200,
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
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text('Weak against'),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index)=> Divider(),
                  itemCount: pokeStore.doubleDamageFrom.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      color: (index %2 == 0) ? Colors.white : Colors.grey,
                      child: ListTile(
                        title: Text('${pokeStore.doubleDamageFrom[index]}'),
                      ),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10),child: Text('Strong against'),),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,

                  separatorBuilder: (BuildContext context, int index)=> Divider(),
                  itemCount: pokeStore.doubleDamageTo.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      color: (index %2 == 0) ? Colors.white : Colors.grey,
                      child: ListTile(
                        title: Text('${pokeStore.doubleDamageTo[index]}'),
                      ),
                    );
                  },
                ),

                Column(children: pokeStore.abilities.map((ability) => Text(ability.name)).toList(),)
              ],
            )
        ),
      )
    );
  }

}