import './player.dart';

class GameController {
  final List<Player> playerList;

  GameController(this.playerList);

  void addPlayer(Player p) {
    playerList.length <= 3 
      ? playerList.add(p) 
      : print('Player list limit reached (4)');
  }
}