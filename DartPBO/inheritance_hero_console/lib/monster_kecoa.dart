import 'package:inheritance_hero_console/monster.dart';
import 'package:inheritance_hero_console/flying_monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster{

  @override
  String move(){
    return 'Jalan-jalan santai';
  }

  @override
  String fly() => 'Syunggg ~';
}