import 'package:inheritance_hero_console/flying_monster.dart';
import 'package:inheritance_hero_console/monster_ubur_ubur.dart';


class MonsterUcoa extends MonsterUburUbur implements FlyingMonster{
  @override
  String fly() => 'Swuussshhh UCOA !~';
}