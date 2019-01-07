import 'package:flutter/material.dart';

import '../game_objects/player.dart';

class NameInputRow extends StatefulWidget {
 final String _lblName;
 Player p;

  NameInputRow(this._lblName, this.p);

  @override
  State<StatefulWidget> createState() {
    return _NameInputState(this._lblName, this.p);
  }
}

class _NameInputState extends State<NameInputRow> {
  final String _lblName;
  Player p;

  _NameInputState(this._lblName, this.p);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: TextFormField(
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).primaryColor
            ),
            decoration: InputDecoration(
              labelText: _lblName
            ),
            onSaved: (String value) {
                p.name = value;        
            }
          )
        ),
      ]
    );
  }
}