import "package:polymer/polymer.dart";
import "dart:html";
//import "../components/dice.dart";

@CustomTag("dice-app")
class DiceApp extends PolymerElement {
  
  @observable int countAsInt = 1;
  @observable int sidesAsInt = 6;
  
  @published String get sides => sidesAsInt.toString();
  void set sides(String s) {
    sidesAsInt = int.parse(s);
  }
  @published String get count => countAsInt.toString();
  void set count(String s) {
    countAsInt = int.parse(s);
  }
  
  DiceApp.created(): super.created();
  
  void roll(MouseEvent e, var detail, Node target) {
    // Need to tell all the dice to roll.
    dispatchEvent(new CustomEvent('rolldice'));
    ///fire("roll");
  }
}
