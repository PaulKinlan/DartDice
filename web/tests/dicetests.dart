import 'package:unittest/unittest.dart';
import '../components/dice.dart';


main() {
 test('Dice Array', () {
   Dice d = new Dice(6);
   
   expect( d.length, equals(6));
 });
 
 test('First item in array is 6 sided die', () {
   Dice d = new Dice(6);
   
   expect( d.first.sides, equals(6));
 });
}