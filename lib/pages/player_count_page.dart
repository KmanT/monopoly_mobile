import 'package:flutter/material.dart';

class PlayerCountPage extends StatelessWidget {
  int _playerCount;
  
  Map<int, String> _countStrings = {
    2: "Two",
    3: "Three",
    4: "Four",
  };

  void _changePage(BuildContext context) {
    String routeName = '/info/' + _playerCount.toString();
    Navigator.pushNamed(context, routeName);
  }

  Widget _buildPlayerButton(BuildContext context, int playerCount) {
     return RaisedButton(
      child: Text(
        '${_countStrings[playerCount]} Players',
        style: TextStyle(
          color: Colors.white
        )
      ),
      onPressed: () {
        _playerCount = playerCount;
        _changePage(context);
      }
    );
  }

  List<Widget> _buildButtonList(BuildContext context) {
    List<Widget> btnList = [];
    for (var val in _countStrings.keys) {
      btnList.add(_buildPlayerButton(context, val));
    }
    return btnList;
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
            children: _buildButtonList(context)
            )
          ),
        ),
      );
  }
}
