import 'package:mobx/mobx.dart';
import 'package:pokede_app/Models/PokeModel.dart';
import 'package:pokede_app/Models/TypeModel.dart';
import 'package:pokede_app/Stores/ability.dart';

part 'pokemons.g.dart';

class PokeStore = PokeStoreBase with _$PokeStore;

abstract class PokeStoreBase with Store {


  @observable
  List<PokeModel> pokemon = [];
  @observable
  String pokemonName='';
  @observable
  int height=0;
  @observable
  int wheight=0;
  @observable
  String id='';
  @observable
  String spriteFront='';
  @observable
  String spriteBack='';
  @observable
  String specie='';
  @observable
  String encounterAreaUrl='';
  @observable
  String encounterArea='';
  @observable
  List<TypeModel> type = [];
  @observable
  String typeSWUrl = '';
  @observable
  List doubleDamageFrom = [];
  @observable
  List doubleDamageTo = [];
  @observable
  List<AbilityStore> abilities=[];




  @action
  void setPokemon(response) {
    id = response['id'].toString();
    pokemonName = response['name'];
    height = response['height'];
    wheight = response['weight'];
    spriteFront = response['sprites']['front_default'];
    spriteBack = response['sprites']['back_default'];
    specie = response['species']['name'];
    encounterAreaUrl = response['location_area_encounters'];
    type = List.from(response['types'].map((v) => TypeModel(v)));
    typeSWUrl = response['types'][0]['type']['url'];
    abilities = List.from(response['abilities'].map((ability)=> AbilityStore(ability['ability']['name'], ability['ability']['url'])));

  }
  @action
  void setPokemonAlter(List<PokeModel> response){
    pokemon = response;

  }
  @action
  void setLocation(responselocation){
    encounterArea = responselocation;
  }

  @action
  setTypesSW({doubleDamageFrom, doubleDamageTo}){
    this.doubleDamageFrom = doubleDamageFrom;
    this.doubleDamageTo = doubleDamageTo;

  }



}
var pokeStore = PokeStore();