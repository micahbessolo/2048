
class Game {
  final int rows;
  final int cols;
  List<List<int>> _board;
  List<List<int>> _prevBoard;
  int _score;
  int _bestScore;
  bool _moved;

  Game(this.rows, this.cols) {
    _board = List.generate(rows, (i) => List.filled(cols, 0));
    _prevBoard = List.generate(rows, (i) => List.filled(cols, 0));
    _score = 0;
    _bestScore = 0;
    _moved = false;
  }

  List<List<int>> get board => _board;
  int get score => _score;
  int get bestScore => _bestScore;
  bool get moved => _moved;

  void init() {
    _score = 0;
    _moved = false;
    _board = List.generate(rows, (i) => List.filled(cols, 0));
    _prevBoard = List.generate(rows, (i) => List.filled(cols, 0));
    _addNumber();
    _addNumber();
  }

  void moveLeft() {
    _moved = false;
    _saveBoard();
    for (int i = 0; i < rows; i++) {
      _moveRowLeft(i);
      _mergeRow(i);
      _moveRowLeft(i);
    }
    _checkMoved();
    if (_moved) {
      _addNumber();
    }
  }

  void moveRight() {
    _moved = false;
    _saveBoard();
    for (int i = 0; i < rows; i++) {
      _moveRowRight(i);
      _mergeRow(i);
      _moveRowRight(i);
    }
    _checkMoved();
    if (_moved) {
      _addNumber();
    }
  }

  void moveUp() {
    _moved = false;
    _saveBoard();
    for (int i = 0; i < cols; i++) {
      _moveColUp(i);
      _mergeCol(i);
      _moveColUp(i);
    }
    _checkMoved();
    if (_moved) {
      _addNumber();
    }
  }

  void moveDown() {
    _moved = false;
    _saveBoard();
    for (int i = 0; i < cols; i++) {
      _moveColDown(i);
      _mergeCol(i);
      _moveCol
    }
  }

  bool canMoveRight() {

  }
}