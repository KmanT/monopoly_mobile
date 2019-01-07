class Player {
  final int _playID;
  String _name = 'Player';
  int _pieceID = 0;
  int _balance = 1500;
  int _position = 0;
  int _inJailCount = 0;
  bool _hasGetOut = false;

  Player(this._playID);

  int get playID => _playID;

  set name(String val) => _name = val;
   
  String get name => _name;

  set pieceID(int id) => _pieceID = id;

  int get pieceID => _pieceID;

  void addBalance(int amount) => _balance += amount;

  void subtractBalance(int amount) => _balance -= amount;

  bool inDebt() => _balance < 0 ? true : false;

}