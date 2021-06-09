import 'dart:io';

import 'package:inheritance_hero_console/drink_ability_mixin.dart';
import 'package:inheritance_hero_console/flying_monster.dart';
import 'package:inheritance_hero_console/hero.dart';
import 'package:inheritance_hero_console/knight.dart';
import 'package:inheritance_hero_console/monster.dart';
import 'package:inheritance_hero_console/monster_kecoa.dart';
import 'package:inheritance_hero_console/monster_ubur_ubur.dart';
import 'package:inheritance_hero_console/monster_ucoa.dart';

void main(List<String> arguments) async {
  Hero h = Hero();
  MonsterUburUbur u = MonsterUburUbur();
  Monster monster = MonsterUburUbur();
  h.healthPoint = -10;
  u.healthPoint = 10;

  List<Monster> monsters = [];
  monsters.add(MonsterUcoa());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());

  Knight knight = Knight();

  print(knight.drink());
  // for(Monster m in monsters){
  //   if(m is DrinkAbilityMixin){
  //     print((m as DrinkAbilityMixin).drink());
  //   }
  // }

  // print((monster as MonsterUburUbur).swim());
  // for (Monster m in monsters) {
  //   if (m is MonsterUburUbur) {
  //     print(m.swim());
  //   }
  // }

  print('Hero HP : ${h.healthPoint.toString()}');
  print('Monster HP : ${u.healthPoint.toString()}');
  print(h.killMonster());
  print(u.eatHuman());
}
