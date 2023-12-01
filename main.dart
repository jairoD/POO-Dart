import 'Animal.dart';
import 'Autor.dart';
import 'Bank.dart';
import 'Calculadora.dart';
import 'Example.dart';
import 'Interfaces.dart';
import 'Libro.dart';
import 'Persona.dart';
import 'Shapes.dart';
import 'Sobrecarga.dart';
import 'Vehiculo.dart';
import 'componentes_vehiculo/Llantas.dart';
import 'componentes_vehiculo/Motor.dart';
import 'componentes_vehiculo/Puertas.dart';

void main() {
  // Instanciar un objeto de tipo Persona
  Persona persona = /* Persona('Jairo', 'lastName', 17, Example()); */
      Persona(
    example: Example(a: 10),
    name: 'Jairo',
    lastName: 'Diaz',
    age: 17,
  );
  persona.printPersona();
  persona.mayoriaEdad();

  persona.name = 'Pablo';
  persona.printPersona();
  print(persona.pi);

  Persona persona2 = Persona.name(name: 'Jairo');
  persona2.printPersona();
  persona2.mayoriaEdad();

  Persona persona3 = Persona.nameAge(name: 'Jairo', age: 15);
  persona3.printPersona();

  Example example = Example(a: 0);
  example.printA();

  Example2 example2 = Example2(a: 10, b: 5);
  example2.printA();
  example2.printB();

  Example3 example3 = Example3(a: 5);
  example3.printA();

  Example exampl4 = Example2(a: 50, b: 20);
  exampl4.printA();

  Animal animal = Dog();
  animal.makeSound();

  Animal animal2 = Cat();
  animal2.makeSound();

  Circle circle = Circle(radius: 2);
  print(circle.area());

  Avion avion = Avion();

  //Libros
  //Libros.arreglo.push(Libro())
  //Libros.arreglo + Libro()
  //Libro1, Libro2,..., LibroN

  avion.volar();
  avion.mantenimientoAlas();
  avion.mantenimientoMotor();
  print(avion.area());

  CuentaBancaria cuenta = CuentaBancaria(titular: 'Jairo');
  print(cuenta.titular);

  //cargando = false;
  try {
    int.parse("a");
    //cargando = true;  ...cargando...
  } catch (e) {
    print("Error al tratar de convertir a entero");
  } finally {
    print("Fin del trycatch");
    //cargando = false
  }

  cuenta.deposito(1000);
  print("Nuevo saldo ${cuenta.miSaldo}");
  cuenta.retiro(500);
  print("Nuevo saldo ${cuenta.miSaldo}");
  int HOLA = 1;
  print(HOLA);
  try {
    cuenta.retiro(10000);
    int.parse("a");
  } catch (e) {
    if (e is BankErrors)
      print(e.toString());
    else
      print(e);
  }
  print("saldo actual ${cuenta.miSaldo}");
  cuenta.nuevoSaldo = 2000;
  print("saldo actual ${cuenta.miSaldo}");

  Calculadora calculadora = Calculadora();
  print(calculadora.sumar(1, 2));
  print(calculadora.sumar3(1, 2, 3));
  print(calculadora.sumar4(1, 2, 3, 4));

  CadenaCustom cadenaCustom = CadenaCustom(valor: "Hola");
  print((cadenaCustom +
          CadenaCustom(valor: "Mundo") +
          CadenaCustom(valor: "Mundito"))
      .valor);
  print((cadenaCustom * 3).valor);

  Vehiculo vehiculo1 = Vehiculo(
      vEcndendido: false,
      puerta: [Puerta(nPuerta: 1), Puerta(nPuerta: 1)],
      llantas: [
        Llanta(nLlanta: 1),
        Llanta(nLlanta: 2),
        Llanta(nLlanta: 3),
        Llanta(nLlanta: 4)
      ],
      motor: Motor(caballos: 10));

  vehiculo1.moverVhiculo();
  print("Final del destino");
  vehiculo1.moverVhiculo();
  Autor autor = Autor(nombre: "Jairo", edad: 38);
  Libro libro = Libro(titulo: "Poesia ligera", autor: autor);
  libro.info();
}
