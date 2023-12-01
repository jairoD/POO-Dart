// ignore_for_file: public_member_api_docs, sort_constructors_first
class Example {
  int a = 0;
  Example({required this.a});
  void printA() {
    print(a);
  }
}

// Example <---- Example2
// Example <---- Example3

class Example2 extends Example {
  int b;

  Example2({required int a, required this.b}) : super(a: a);

  void printA() {
    print("Esta es la propiedad a: $a");
  }

  void printB() {
    print("Esta es la propiedad a: $b");
  }
}

class Example3 extends Example {
  Example3({required int a}) : super(a: a);
}
