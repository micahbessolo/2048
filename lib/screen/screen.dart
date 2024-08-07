
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(),
    );
  }
}

class GameWidget extends StatefulWidget {
  @override

  State<StatefulWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {

  Game _game;
  final int rows = 4;
  final int cols = 4;
  bool _isDragging = false;
  bool _gameOver = false;
  int _bestScore = 0;
  int _currentScore = 0;

  void newGame() {
    _game.init();
  }

  void moveLeft() {
    
  }

  void moveRight() {

  }

  void moveUp() {

  }

  void moveDown() {

  }

  void checkGameOver() {

  }


}