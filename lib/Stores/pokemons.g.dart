// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeStore on PokeStoreBase, Store {
  final _$pokemonAtom = Atom(name: 'PokeStoreBase.pokemon');

  @override
  List<PokeModel> get pokemon {
    _$pokemonAtom.reportRead();
    return super.pokemon;
  }

  @override
  set pokemon(List<PokeModel> value) {
    _$pokemonAtom.reportWrite(value, super.pokemon, () {
      super.pokemon = value;
    });
  }

  final _$pokemonNameAtom = Atom(name: 'PokeStoreBase.pokemonName');

  @override
  String get pokemonName {
    _$pokemonNameAtom.reportRead();
    return super.pokemonName;
  }

  @override
  set pokemonName(String value) {
    _$pokemonNameAtom.reportWrite(value, super.pokemonName, () {
      super.pokemonName = value;
    });
  }

  final _$heightAtom = Atom(name: 'PokeStoreBase.height');

  @override
  int get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(int value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  final _$wheightAtom = Atom(name: 'PokeStoreBase.wheight');

  @override
  int get wheight {
    _$wheightAtom.reportRead();
    return super.wheight;
  }

  @override
  set wheight(int value) {
    _$wheightAtom.reportWrite(value, super.wheight, () {
      super.wheight = value;
    });
  }

  final _$idAtom = Atom(name: 'PokeStoreBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$spriteFrontAtom = Atom(name: 'PokeStoreBase.spriteFront');

  @override
  String get spriteFront {
    _$spriteFrontAtom.reportRead();
    return super.spriteFront;
  }

  @override
  set spriteFront(String value) {
    _$spriteFrontAtom.reportWrite(value, super.spriteFront, () {
      super.spriteFront = value;
    });
  }

  final _$spriteBackAtom = Atom(name: 'PokeStoreBase.spriteBack');

  @override
  String get spriteBack {
    _$spriteBackAtom.reportRead();
    return super.spriteBack;
  }

  @override
  set spriteBack(String value) {
    _$spriteBackAtom.reportWrite(value, super.spriteBack, () {
      super.spriteBack = value;
    });
  }

  final _$specieAtom = Atom(name: 'PokeStoreBase.specie');

  @override
  String get specie {
    _$specieAtom.reportRead();
    return super.specie;
  }

  @override
  set specie(String value) {
    _$specieAtom.reportWrite(value, super.specie, () {
      super.specie = value;
    });
  }

  final _$encounterAreaUrlAtom = Atom(name: 'PokeStoreBase.encounterAreaUrl');

  @override
  String get encounterAreaUrl {
    _$encounterAreaUrlAtom.reportRead();
    return super.encounterAreaUrl;
  }

  @override
  set encounterAreaUrl(String value) {
    _$encounterAreaUrlAtom.reportWrite(value, super.encounterAreaUrl, () {
      super.encounterAreaUrl = value;
    });
  }

  final _$encounterAreaAtom = Atom(name: 'PokeStoreBase.encounterArea');

  @override
  String get encounterArea {
    _$encounterAreaAtom.reportRead();
    return super.encounterArea;
  }

  @override
  set encounterArea(String value) {
    _$encounterAreaAtom.reportWrite(value, super.encounterArea, () {
      super.encounterArea = value;
    });
  }

  final _$typeAtom = Atom(name: 'PokeStoreBase.type');

  @override
  List<TypeModel> get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(List<TypeModel> value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$typeSWUrlAtom = Atom(name: 'PokeStoreBase.typeSWUrl');

  @override
  String get typeSWUrl {
    _$typeSWUrlAtom.reportRead();
    return super.typeSWUrl;
  }

  @override
  set typeSWUrl(String value) {
    _$typeSWUrlAtom.reportWrite(value, super.typeSWUrl, () {
      super.typeSWUrl = value;
    });
  }

  final _$doubleDamageFromAtom = Atom(name: 'PokeStoreBase.doubleDamageFrom');

  @override
  List<dynamic> get doubleDamageFrom {
    _$doubleDamageFromAtom.reportRead();
    return super.doubleDamageFrom;
  }

  @override
  set doubleDamageFrom(List<dynamic> value) {
    _$doubleDamageFromAtom.reportWrite(value, super.doubleDamageFrom, () {
      super.doubleDamageFrom = value;
    });
  }

  final _$doubleDamageToAtom = Atom(name: 'PokeStoreBase.doubleDamageTo');

  @override
  List<dynamic> get doubleDamageTo {
    _$doubleDamageToAtom.reportRead();
    return super.doubleDamageTo;
  }

  @override
  set doubleDamageTo(List<dynamic> value) {
    _$doubleDamageToAtom.reportWrite(value, super.doubleDamageTo, () {
      super.doubleDamageTo = value;
    });
  }

  final _$abilitiesAtom = Atom(name: 'PokeStoreBase.abilities');

  @override
  List<AbilityStore> get abilities {
    _$abilitiesAtom.reportRead();
    return super.abilities;
  }

  @override
  set abilities(List<AbilityStore> value) {
    _$abilitiesAtom.reportWrite(value, super.abilities, () {
      super.abilities = value;
    });
  }

  final _$PokeStoreBaseActionController =
      ActionController(name: 'PokeStoreBase');

  @override
  void setPokemon(dynamic response) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setPokemon');
    try {
      return super.setPokemon(response);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemonAlter(List<PokeModel> response) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setPokemonAlter');
    try {
      return super.setPokemonAlter(response);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLocation(dynamic responselocation) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setLocation');
    try {
      return super.setLocation(responselocation);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTypesSW({dynamic doubleDamageFrom, dynamic doubleDamageTo}) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setTypesSW');
    try {
      return super.setTypesSW(
          doubleDamageFrom: doubleDamageFrom, doubleDamageTo: doubleDamageTo);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemon: ${pokemon},
pokemonName: ${pokemonName},
height: ${height},
wheight: ${wheight},
id: ${id},
spriteFront: ${spriteFront},
spriteBack: ${spriteBack},
specie: ${specie},
encounterAreaUrl: ${encounterAreaUrl},
encounterArea: ${encounterArea},
type: ${type},
typeSWUrl: ${typeSWUrl},
doubleDamageFrom: ${doubleDamageFrom},
doubleDamageTo: ${doubleDamageTo},
abilities: ${abilities}
    ''';
  }
}
