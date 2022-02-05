// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AbilityStore on AbilityStoreBase, Store {
  final _$nameAtom = Atom(name: 'AbilityStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$urlAtom = Atom(name: 'AbilityStoreBase.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  final _$effectAtom = Atom(name: 'AbilityStoreBase.effect');

  @override
  String get effect {
    _$effectAtom.reportRead();
    return super.effect;
  }

  @override
  set effect(String value) {
    _$effectAtom.reportWrite(value, super.effect, () {
      super.effect = value;
    });
  }

  final _$fetchEffectAsyncAction = AsyncAction('AbilityStoreBase.fetchEffect');

  @override
  Future fetchEffect(dynamic url) {
    return _$fetchEffectAsyncAction.run(() => super.fetchEffect(url));
  }

  @override
  String toString() {
    return '''
name: ${name},
url: ${url},
effect: ${effect}
    ''';
  }
}
