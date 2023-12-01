class Motor {
  double caballos;
  bool encendido = false;
  Motor({
    required this.caballos,
  });

  void onOff() {
    encendido = !encendido;
  }
}
