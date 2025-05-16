import '../models/anio_model.dart';

class AnioController {
  //verificar si es biciesto
  bool verificarBisiesto(int anio) {
    return AnioModel(anio).esBisiesto();
  }

  //obtener los 10 ultimos años
  List <int> obtenerUltimos(int desde) {
    List<int> lista = [];
    int actual = desde;
    while (lista.length < 10) {
      if (verificarBisiesto(actual))
        lista.add(actual);
      actual--;
    }
    return lista;
  }
}
