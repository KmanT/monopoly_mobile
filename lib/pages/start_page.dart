import 'package:flutter/material.dart';
import 'dart:io';

class StartPage extends StatelessWidget {
  
  Widget _buildNewGameButton(BuildContext context) {
    return RaisedButton(
      child: Text(
        'New Game',
        style: TextStyle(
          color: Colors.white
        )
      ),
      onPressed: () => Navigator.pushNamed(context, '/count'),
    );
  }

  Widget _buildExitButton() {
    return RaisedButton(
      child: Text(
        'Exit',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      onPressed: () => exit(0),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GVSU Monopoly'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Container(
          //alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              _buildNewGameButton(context),
              _buildExitButton()
            ],
          ),
        )
      )
    );
  }
}