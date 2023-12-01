abstract class Shape {
  double area();
}

abstract class Shape2 {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle({
    required this.radius,
  });

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
