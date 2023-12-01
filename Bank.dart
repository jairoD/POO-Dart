class CuentaBancaria {
  String titular;
  double _saldo = 0;
  CuentaBancaria({required this.titular});

  double get miSaldo {
    return _saldo;
  }

  set nuevoSaldo(double nuevoSaldo) {
    _saldo = nuevoSaldo;
  }

  _metodoPrivado() {
    print("Estas haciendo una operacion");
  }

  deposito(double monto) {
    //_metodoPrivado();
    if (monto > 0) {
      nuevoSaldo = _saldo + monto;
      //_saldo = _saldo + monto;
    } else {
      throw Exception("Saldo debe ser mayor a 0");
    }
  }

  retiro(double monto) {
    if (monto <= 0) {
      throw BankErrors(mensaje: BANK_ERRORS.CANTMI0);
    }
    if (_saldo == 0) throw BankErrors(mensaje: BANK_ERRORS.SALDOI);
    if (monto > 0 && monto <= _saldo) {
      nuevoSaldo = _saldo - monto;
    } else {
      throw BankErrors(mensaje: BANK_ERRORS.SALDOI);
    }
  }
}

enum BANK_ERRORS { SALDOI, CANTMI0 }

extension BankTypeExtension on BANK_ERRORS {
  String get errorMessage {
    switch (this) {
      case BANK_ERRORS.SALDOI:
        return "Saldo Insuficiente";
      case BANK_ERRORS.CANTMI0:
        return "Cantidad menor o igual a 0";
      default:
        return "Saldo Insuficiente";
    }
  }
}

class BankErrors extends Error {
  final BANK_ERRORS mensaje;

  BankErrors({required this.mensaje});

  String toString() => mensaje.errorMessage;
}
