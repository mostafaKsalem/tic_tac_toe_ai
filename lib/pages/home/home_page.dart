

import 'package:flutter/material.dart';

import 'game_mode_selection_widget.dart';
import 'game_title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  const [
          Spacer(flex: 2),
          GameTitleWidget(),
          Spacer(),
          GameModeSelectionWidget(),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}