import 'package:test/test.dart';

import '../lib/pages/player_info_page.dart';
import '../lib/game_objects/player.dart';

void main() {

  test("The player list is filled with the correct amount of players",() {
    List<Player> playerList = [];
    int playerCount = 1;
    for (int i = 0; i < playerCount; i++) {
      playerList.add(Player(i + 1));
    }
    expect(playerList.length, 1);
    expect(playerList[0].playID, 1);
  });

}


