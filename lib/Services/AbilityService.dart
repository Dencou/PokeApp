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

class AbilityService {

  Future getAbility(urlAbility)async{
    var url = Uri.parse(urlAbility);
    var response = await http.get(url);
    var responsejson = json.decode(response.body);
    return responsejson;
  }





}
var abilitiyService = AbilityService();