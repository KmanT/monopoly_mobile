import 'package:flutter/material.dart';

import './main_theme_data.dart';
import './pages/start_page.dart';
import './pages/player_count_page.dart';
import './pages/player_info_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monopoly',
      theme: MainThemeData.getThemeData(),
      routes: {
        '/': (BuildContext context) => StartPage(),
        '/count': (BuildContext context) => PlayerCountPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'info') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => PlayerInfoPage(index)
          );
        }
      },
    );
  }
}