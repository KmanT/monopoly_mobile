import 'package:flutter/material.dart';

import '../game_objects/player.dart';

class IconRow extends StatefulWidget {
  final Player _player;

  IconRow(this._player);

  @override
  State<StatefulWidget> createState() {
    return IconRowState(_player);
  }
}

class IconRowState extends State<IconRow> {

  final Player _player;

  IconRowState(this._player);

  void _setPlayerIcon(int btnNum) {
    setState(() {
      _player.pieceID = btnNum;
    }); 
  }
  
  Widget _buildRadioButton(Player p, int btnNum) {
    return Radio(
      value: btnNum,
      groupValue: p.playID,
      onChanged: _setPlayerIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: <Widget>[
          _buildRadioButton(_player, 1),
          Image.asset('assets/images/pieces/piece1.png'),
          _buildRadioButton(_player, 2),
          Image.asset('assets/images/pieces/piece2.png'),
          _buildRadioButton(_player, 3),
          Image.asset('assets/images/pieces/piece3.png'),
         _buildRadioButton(_player, 4),
          Image.asset('assets/images/pieces/piece4.png'),
        ],
      )
    );
  }
}