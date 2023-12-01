import 'Autor.dart';

class Libro {
  String titulo;
  Autor? autor;
  Libro({
    required this.titulo,
    this.autor,
  });

  void info() {
    if (autor != null)
      print("Libro: $titulo  Autor: ${autor?.nombre}  ${autor?.edad}");
    else {
      print("Libro: $titulo  Autor: Autor anonimo");
    }
  }
}
