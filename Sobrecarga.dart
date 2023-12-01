class CadenaCustom {
  String valor;
  CadenaCustom({required this.valor});

  CadenaCustom operator +(CadenaCustom objeto) {
    return CadenaCustom(valor: "$valor ${objeto.valor}");
  }

  CadenaCustom operator *(int nVeces) {
    if (nVeces < 0 || nVeces == 0) {
      return CadenaCustom(valor: "");
    } else {
      String resultado = "$valor ";
      for (var i = 0; i < nVeces - 1; i++) {
        resultado += "$valor ";
      }
      return CadenaCustom(valor: resultado);
    }
  }

  CadenaCustom operator -(int nVeces) {
    if (nVeces < 0 || nVeces == 0) {
      return CadenaCustom(valor: "");
    } else {
      String resultado = "$valor ";
      for (var i = 0; i < nVeces - 1; i++) {
        resultado += "$valor ";
      }
      return CadenaCustom(valor: resultado);
    }
  }

  CadenaCustom operator /(int nVeces) {
    if (nVeces < 0 || nVeces == 0) {
      return CadenaCustom(valor: "");
    } else {
      String resultado = "$valor ";
      for (var i = 0; i < nVeces - 1; i++) {
        resultado += "$valor ";
      }
      return CadenaCustom(valor: resultado);
    }
  }
}
