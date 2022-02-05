import 'package:mobx/mobx.dart';
import 'package:pokede_app/Services/AbilityService.dart';

part 'ability.g.dart';

class AbilityStore = AbilityStoreBase with _$AbilityStore;


abstract class AbilityStoreBase with Store {



  AbilityStoreBase(name,url){
    this.name = name;
    this.url=url;
    fetchEffect(url);

  }

  @observable
  String name='';
  @observable
  String url='';
  @observable
  String effect='';



  @action
  fetchEffect(url) async{
    var abilityjson = await abilitiyService.getAbility(url);
    var englishEntry = abilityjson['effect_entries'].where((entry)=> entry['language']['name'] == 'en').toList()[0];
    effect = englishEntry['effect'] ?? 'English entry for this ability not found';


  }


}
