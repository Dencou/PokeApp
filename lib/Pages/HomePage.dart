import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokede_app/Services/PokeService.dart';
import 'package:pokede_app/Stores/pokemons.dart';
import 'package:pokede_app/Widgets/PokeCard.dart';
import 'package:snack/snack.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePage createState() => _HomePage();

}

class _HomePage extends State<HomePage>{

  TextEditingController name = TextEditingController();





  Future submit()async{
    await pokeService.getPokemonById(name.text);
    print('print from homepage =>${pokeStore.doubleDamageFrom}');
    setState(() {
    });

    PokeCard();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
        backgroundColor: Colors.yellowAccent.shade700,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),

                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: ()=>{submit()}, child: Text('Search Pokemon', style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    primary: Colors.yellow,
                    shadowColor: Colors.yellow.shade800,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                ),),
                Divider(thickness: 2,),
                pokeStore.pokemonName.isEmpty ? Text('Start searching for pokemons!') : PokeCard(),

              ],
            )
        ),
      )
    );
  }



}


