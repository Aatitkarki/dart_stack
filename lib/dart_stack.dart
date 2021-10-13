library dart_stack;

import 'dart:collection';

/// A Dart Stack with functionality of
/// push,pop,stack_size and peek.
class DartStack<T> {
  final Queue<T> queue = Queue();

  bool isEmpty() => queue.isEmpty;
  bool isNotEmpty() => queue.isNotEmpty;

  push(T data) {
    queue.addLast(data);
  }

  T pop() {
    if (isEmpty()) {
      throw NullPointerException("Stack is empty");
    }
    return queue.removeFirst();
  }

  T peek() {
    if (isEmpty()) {
      throw NullPointerException("Stack is empty");
    }
    return queue.first;
  }

  int size() {
    return queue.length;
  }

  @override
  String toString() {
    return queue.toString();
  }
}

class NullPointerException implements Exception {
  final String message;
  NullPointerException(this.message);
  @override
  String toString() => 'NullPointerException: $message';
}
