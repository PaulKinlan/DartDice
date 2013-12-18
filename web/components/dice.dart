library Dice;

import "dart:math";
import "dart:collection";

class Dice extends Object with IterableMixin<Die> {
  List<Die> dice ;
  Iterator<Die> get iterator => dice.iterator;
  
  /// Creates x 6 sided dice
  Dice([int x]) {
    if(x == null) {
      x = 1;
    }
    dice = new List<Die>.filled(x, new Die(6));
  }

}

class Die {
  int sides;
  Random _r = new Random();
  
  Die(this.sides);
  
  int roll() => _r.nextInt(sides);
}