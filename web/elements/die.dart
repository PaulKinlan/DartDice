import "package:polymer/polymer.dart";
import "dart:html";
import "../components/dice.dart";


@CustomTag("die-element")
class DieElement extends PolymerElement {
  /// The number of sides the die will have
  @published int sides;
  /// The current value
  @observable int value = 0;
  
  Die die;
  
  DieElement.created() : super.created();
       
  @override
  void enteredView() {
    super.enteredView();
    die = new Die(6);
  }
  
  void roll(Event e, var detail, Node target) {
    value = die.roll();
  }
}
