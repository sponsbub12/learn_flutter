import 'package:inheritance_hero_console/monster.dart';

class MonsterUburUbur extends Monster{
  String swim() => 'Swimming';

  @override
  String move(){
    return 'Berenang-renang';
  }

  @override
  String eatHuman(){
    return "Sedot sedot asik";
  }
}