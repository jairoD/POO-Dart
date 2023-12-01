class ExtraTerrestre {}

mixin CaracEsp on ExtraTerrestre {
  void superSalto() {
    print("Super salto");
  }

  void volar() {
    print("volar");
  }
}

class PersonaComun {
  String nombre;
  PersonaComun({
    required this.nombre,
  });
}

class SuperHeroe extends ExtraTerrestre with CaracEsp {}

void main() {
  SuperHeroe superP = SuperHeroe();
  superP.superSalto();
  superP.volar();
}
