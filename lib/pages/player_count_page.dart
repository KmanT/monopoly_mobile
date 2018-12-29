import 'package:flutter/material.dart';

class PlayerCountPage extends StatelessWidget {
  int _playerCount;
  //Widget _buildOnePlayerButton() {}

  void _changePage(BuildContext context) {
    String routeName = '/info/' + _playerCount.toString();
    Navigator.pushNamed(context, routeName);
  }

  Widget _buildTwoPlayerButton(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Two Players',
        style: TextStyle(
          color: Colors.white
        )
      ),
      onPressed: () {
        _playerCount = 2;
        _changePage(context);
      }
    );
  }

  Widget _buildThreePlayerButton(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Three Players',
        style: TextStyle(
          color: Colors.white
        )
      ),
      onPressed: () {
        _playerCount = 3;
        _changePage(context);
      }
    );
  }

  Widget _buildFourPlayerButton(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Four Players',
        style: TextStyle(
          color: Colors.white
        )
      ),
      onPressed: () {
        _playerCount = 4;
        _changePage(context);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How Many Players?'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              _buildTwoPlayerButton(context),
              _buildThreePlayerButton(context),
              _buildFourPlayerButton(context)
            ],
          ),
        ),

      )
    );
  }
}