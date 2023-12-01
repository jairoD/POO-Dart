import 'package:test/test.dart';

import '../Bank.dart';

void main() {
  test('Primer test', () {
    String value = 'a,b,c'; // [a,b,c]
    //expect
    expect(value.split(','), equals(['a', 'b', 'c']));
  });

  group('Test Banco', () {
    test('Cuenta bancaria', () {
      CuentaBancaria cuenta = CuentaBancaria(titular: 'Jairo');
      cuenta.deposito(1000);
      expect(cuenta.miSaldo, 1000);
      cuenta.retiro(500);
      expect(cuenta.miSaldo, 500);
    });

    test('Cuenta bancaria2', () {
      CuentaBancaria cuenta = CuentaBancaria(titular: 'Jairo');
      cuenta.deposito(1000);
      expect(cuenta.miSaldo, 1000);
      cuenta.retiro(500);
      expect(cuenta.miSaldo, 500);
    });
  });

  group('String', () {
    test('.split() splits the string on the delimiter', () {
      var string = 'foo,bar,baz';
      expect(string.split(','), equals(['foo', 'bar', 'baz']));
    });

    test('.trim() removes surrounding whitespace', () {
      var string = '  foo ';
      expect(string.trim(), equals('foo'));
    });
  });
}
