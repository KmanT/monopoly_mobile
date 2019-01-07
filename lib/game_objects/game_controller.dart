import './player.dart';

class GameController {
  List<Player> _playerList;

  GameController(this._playerList);

  void addPlayer(Player p) {
    /*
    try {
      _playerList.add(p);
    } catch () {

    }
    */
    _playerList.length <= 3 
      ? _playerList.add(p) 
      : print('Player list limit reached (4)');
  }
}