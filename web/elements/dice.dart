import "package:polymer/polymer.dart";
import "../components/dice.dart";

@CustomTag("dice-element")
class DiceElement extends PolymerElement {
  /// The [count] the total number of dice
  @published int count;
  @observable Dice dice;
  
  DiceElement.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    
    // Create the dice elements
    dice = new Dice(count);
  }
  
}