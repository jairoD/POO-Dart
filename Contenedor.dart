class Contenedor<T> {
  T valor;
  Contenedor({
    required this.valor,
  });
}

class ListGenerica<T> {
  List<T> elementos = [];

  void agregar(T valor) {
    elementos.add(valor);
  }

  T obtener(int i) {
    return elementos[i];
  }
}

/* class ClaseGenerica<T extends OtraClase>{

} */

abstract class ClaseGeneral {
  String get getValue;
}

class Especifica1 extends ClaseGeneral {
  @override
  String get getValue => "Especifica1";
}

class Especifica2 extends ClaseGeneral {
  @override
  String get getValue => "Especifica2";
}

class Comun<T extends ClaseGeneral> {
  List<T> especificaciones;
  Comun({
    required this.especificaciones,
  });
  void printAll() {
    for (var element in especificaciones) {
      print(element.getValue);
    }
  }
}

void main() {
  Contenedor cont = Contenedor(valor: 40);
  Contenedor cont2 = Contenedor(valor: "jairo");
  print(cont.valor);
  print(cont2.valor);

  ListGenerica listG = ListGenerica<int>();
  listG.agregar(1);
  listG.agregar(2);
  print(listG.obtener(1));

  Comun comun = Comun(especificaciones: [Especifica1(), Especifica2()]);
  comun.printAll();
}
