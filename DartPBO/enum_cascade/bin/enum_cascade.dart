
void main(List<String> arguments) {
  // MonsterUcoa monster = MonsterUcoa(status: UcoaStatus.confused);
  // monster.move();
  // monster.eat();
  
  // MonsterUcoa monster = MonsterUcoa(status: UcoaStatus.confused)
  // ..move()
  // ..eat();

   MonsterUcoa monster = MonsterUcoa(status: UcoaStatus.confused);
   print('Hello World');

  monster..move()
  ..eat();

}

enum UcoaStatus{normal,posioned,confused}


class MonsterUcoa{
  final UcoaStatus status; //1: Normal ; 2: Poisoned ; 3: Confused

  MonsterUcoa({this.status});

    void move(){
      switch(status){
        case UcoaStatus.normal:
        print('Ucoa is Moving!');
        break;
        
        case UcoaStatus.posioned:
        print('Ucoa is Poisoned!');
        break;
        
        case UcoaStatus.confused:
        print('Ucoa is Confused!');
        break;

        default:
        print('Default value');
      }
  }
  
    void eat(){
      print('Ucoa is eating Indomie');
    }
}