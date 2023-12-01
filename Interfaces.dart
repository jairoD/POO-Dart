import 'Shapes.dart';

abstract class Volador {
  void volar();
}

abstract class Mantenimiento {
  void mantenimientoAlas();
  void mantenimientoMotor();
}

class Pajaro implements Volador {
  @override
  void volar() {
    print("Pajaro vuela");
  }
}

class Avion extends Shape implements Volador, Mantenimiento {
  @override
  void volar() {
    print("Avio vuela");
  }

  @override
  void mantenimientoAlas() {
    print("Realizar mantenimiento de alas");
  }

  @override
  void mantenimientoMotor() {
    print("Realizar mantenimiento Motor");
  }

  @override
  double area() {
    return 1.1;
  }
}
