import 'package:http/http.dart' as http;
import 'package:pokede_app/Models/PokeModel.dart';
import 'package:pokede_app/Models/TypeModel.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokede_app/Pages/DetailedPokemonPage.dart';
import 'package:pokede_app/Stores/ability.dart';
import 'package:pokede_app/Stores/pokemons.dart';
import 'package:get/get.dart';

import 'package:pokede_app/Stores/pokemons.dart';



class PokeService {

  Future get (purl) async{
    var url = Uri.parse('$purl');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);
    var locationName = responsejson[1]['location_area']['name'];
    pokeStore.setLocation(locationName);
  }

  Future typeSW() async{
    var url = Uri.parse(pokeStore.typeSWUrl);
    var response = await http.get(url);
    var responsejson = json.decode(response.body);
    var doubleDamageFrom = List.from(responsejson['damage_relations']['double_damage_from'].map((e) => e['name'])).toList();
    var doubleDamageTo = List.from(responsejson['damage_relations']['double_damage_to'].map((e)=> e['name']));
    pokeStore.setTypesSW(doubleDamageFrom:doubleDamageFrom, doubleDamageTo:doubleDamageTo);

  }

  Future getPokemonById(id) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);
    pokeStore.setPokemon(responsejson);

  }

  whichType(){
    return Image.network('');
  }

  List<Widget> getTypeList(){
    return pokeStore.type.map( (type)=> type.img).toList();
  }





}
var pokeService = PokeService();