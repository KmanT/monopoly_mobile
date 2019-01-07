import 'dart:math';

class Dice{
  static const int dieMin = 1;
  static const int dieMax = 6;
  int _dieOne = dieMin;
  int _dieTwo = dieMin;

  Random rand = Random.secure();

  void roll() {
    _dieOne = rand.nextInt(dieMax) + dieMin;
    _dieTwo = rand.nextInt(dieMax) + dieMin;
  }

  int get dieOne => _dieOne;

  int get dieTwo => _dieTwo;

  int get totalRoll => _dieOne + _dieTwo;

}