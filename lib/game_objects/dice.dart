import 'dart:math';

class Dice{
  static const int DIE_MIN = 1;
  static const int DIE_MAX = 6;
  int _dieOne = DIE_MIN;
  int _dieTwo = DIE_MIN;

  Random rand = Random.secure();

  void roll() {
    _dieOne = rand.nextInt(DIE_MAX) + DIE_MIN;
    _dieTwo = rand.nextInt(DIE_MAX) + DIE_MIN;
  }

  int get dieOne {
    return _dieOne;
  }

  int get dieTwo {
    return _dieTwo;
  }

  int get totalRoll {
    return _dieOne + _dieTwo;
  }

}