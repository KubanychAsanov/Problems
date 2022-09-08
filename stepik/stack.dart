class Stack {
  final List<int> _list = <int>[];

  void push(char) {
    _list.add(char);
  }

  int pop() {
    return _list.removeLast();
  }

  get isEmpty => _list.isEmpty;
}
