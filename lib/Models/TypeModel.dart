import 'package:flutter/cupertino.dart';

class TypeModel{
  String name = '';
  String url = '';

  TypeModel(typeJson) {
    fromJson(typeJson);
  }


  fromJson(type) {
    name = type['type']['name'];
    url = type['type']['url'];
  }

  Widget get img {
    return Image.network('https://veekun.com/dex/media/types/en/$name.png');
  }

}