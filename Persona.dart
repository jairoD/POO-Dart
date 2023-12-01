import 'Example.dart';

class Persona {
  String name;
  String? lastName;
  int? age;
  Example? example;
  final double pi = 3.14;

  //privated
  //protected
  //public
  Persona({
    required this.name,
    required this.lastName,
    required this.age,
    required this.example,
  });

  //Constructores Multiple

  Persona.name({required this.name});

  Persona.nameAge({required this.name, required this.age});

  printPersona() {
    print("Nombre: $name Apellido: $lastName Edad: $age ");
  }

  mayoriaEdad() {
    if ((age ?? 0) >= 18) {
      print("Mayor de edad");
    } else {
      print("Menor de edad");
    }
    bool example = true;
    if (example) print("");
  }

  String example2() {
    return 'string';
  }
}
