import 'package:inheritance_hero_console/character.dart';


abstract class Monster extends Character{
  String eatHuman() => 'Eating... mmm, so yummy';
  String move();
}