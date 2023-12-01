//Motor
//Llantas
//Puertas
//Ventanas -> Vidrio/Vidrio

//Vehiculo

import 'componentes_vehiculo/Llantas.dart';
import 'componentes_vehiculo/Motor.dart';
import 'componentes_vehiculo/Puertas.dart';

class Vehiculo {
  bool vEcndendido = false;
  List<Puerta> puerta;
  List<Llanta> llantas;
  Motor motor;
  Vehiculo({
    required this.vEcndendido,
    required this.puerta,
    required this.llantas,
    required this.motor,
  });

  void moverVhiculo() {
    vEcndendido = !vEcndendido;
    motor.onOff();
    print(
        "Vehiculo ${vEcndendido ? 'encendido' : 'apagado'}, Motor ${motor.encendido ? 'en marcha' : ' detenido'}");
  }
}
