import 'package:flutter/material.dart';

import '../game_objects/player.dart';
import '../widgets/icon_row.dart';

class PlayerInfoPage extends StatefulWidget {
  final int _playerCount;
  List<Player> _playerList = [];

  PlayerInfoPage(this._playerCount);

  void _fillList() {
    for (int i = 0; i < _playerCount; i++) {
      _playerList.add(Player(i + 1));
    }
  }
  
  @override
    State<StatefulWidget> createState() {
      _fillList();
      return _PlayerInfoState(_playerCount, this._playerList);
    }
}

class _PlayerInfoState extends State<PlayerInfoPage> {
  final int _playerCount;
  final List<Player> _playerList;
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _PlayerInfoState(this._playerCount, this._playerList);

  Widget _buildPlayerRow(String lblName, Player p) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              child: TextFormField(
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor
                ),
                decoration: InputDecoration(
                  labelText: lblName
                ),
              )
            ),
          ]
        ),
        IconRow(p)
      ]
    );
  }

  Widget _buildContinueButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Continue',
          style: TextStyle(
            color: Colors.white
          )
        ),
        onPressed: _startGame,
      )
    );
  }

  void _startGame() {
    for (Player p in _playerList) {
      print("Player ${p.playID} ${p.pieceID}");
    }
  }

  Widget _buildPlayerForm() {
    if (_playerCount == 1) {
      return Column (
        children: <Widget>[
          _buildPlayerRow('Player 1', _playerList[0]),
          _buildContinueButton()
        ]
      );
    } else if (_playerCount == 2) {
      return Column (
        children: <Widget>[
          _buildPlayerRow('Player 1', _playerList[0]),
          _buildPlayerRow('Player 2', _playerList[1]),
          _buildContinueButton()
        ]
      );
    } else if (_playerCount == 3) {
      return Column (
        children: <Widget>[
          _buildPlayerRow('Player 1', _playerList[0]),
          _buildPlayerRow('Player 2', _playerList[1]),
          _buildPlayerRow('Player 3', _playerList[2]),
          _buildContinueButton()
        ]
      );
    } else  {
      return Column (
        children: <Widget>[
          _buildPlayerRow('Player 1', _playerList[0]),
          _buildPlayerRow('Player 2', _playerList[1]),
          _buildPlayerRow('Player 3', _playerList[2]),
          _buildPlayerRow('Player 4', _playerList[3]),
          _buildContinueButton()
        ]
      );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Pick Names and Icons')
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: _buildPlayerForm()
        ),
      ),      
    );
  }
}

