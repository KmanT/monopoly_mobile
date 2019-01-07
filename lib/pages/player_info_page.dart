import 'package:flutter/material.dart';

import '../game_objects/player.dart';
import '../widgets/name_input_row.dart';
import '../widgets/icon_row.dart';

class PlayerInfoPage extends StatefulWidget {
  final int _playerCount;
  final List<Player> _playerList = [];

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
        NameInputRow(lblName, p),
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
    _formKey.currentState.save();
    for (Player p in _playerList) {
      print("${p.name} ${p.playID} ${p.pieceID}");
    }
  }

  Widget _buildPlayerForm() {
    List<Widget> formList = [];
    for (Player p in _playerList) {
      formList.add(_buildPlayerRow("Player ${p.playID}", p));
    }
    formList.add(_buildContinueButton());
    return Column (children: formList);
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

