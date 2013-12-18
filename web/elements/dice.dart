import "package:polymer/polymer.dart";
import "package:observe/observe.dart";
import "../components/dice.dart";

@CustomTag("dice-element") @reflectable
class DiceElement extends PolymerElement {
  /// The [count] the total number of dice
  @published int count;
  @reflectable @published int sides;
  @observable Dice dice;
  
  DiceElement.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    
    this.changes.listen((records) {
      // There are numerous changes so only pick ones we want.
      bool regenerateDice = false;
      
      for(var change in records) {
        if(change.name.toString() == "Symbol(\"count\")"
           || change.name.toString() == "Symbol(\"sides\")") 
          regenerateDice = true; 
      }
      
      if(regenerateDice)
        dice = new Dice(count);
    });
  }
  
  void roll() {
    dice.forEach((d) => d.roll());
  }
 
}