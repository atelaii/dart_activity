class Stack<T> {
  List<T> _stack = [];

  /// Pushes an [element] onto the stack.
  void push(T element) { 
    _stack.add(element);
  }

  /// Pops an element from the stack.
  ///
  /// Throws a [StateError] if the stack is empty.
  T pop() {
    if (isEmpty()) {
      throw StateError("Cannot pop from an empty stack");
    }
    return _stack.removeLast();
  }

  /// Checks if the stack is empty.
  bool isEmpty() {
    return _stack.isEmpty;
  }
}

void main() {
  // Creating a stack of integers
  Stack<int> myStack = Stack<int>();

  // Pushing elements onto the stack
  myStack.push(5);
  myStack.push(10);
  myStack.push(15);

  // Checking if the stack is empty
  print("Is stack empty? ${myStack.isEmpty()}"); // Should print false

  // Popping elements from the stack
  print("Popped element: ${myStack.pop()}"); // Should print 15
  print("Popped element: ${myStack.pop()}"); // Should print 10

  // Checking if the stack is empty again
  print("Is stack empty? ${myStack.isEmpty()}"); // Should print false

  // Popping the last element from the stack
  print("Popped element: ${myStack.pop()}"); // Should print 5

  // Checking if the stack is empty after popping all elements
  print("Is stack empty? ${myStack.isEmpty()}"); // Should print true

  // Trying to pop from an empty stack
  try {
    myStack.pop();
  } catch (e) {
    print("Error: ${e.toString()}"); // Should print "Cannot pop from an empty stack"
  }
}
