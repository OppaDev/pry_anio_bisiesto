class AnioModel {
  final int anio;

  AnioModel(this.anio);

  //aqui va la Logica
  bool esBisiesto() {
    if (anio % 4 == 0) {
      if (anio % 100 == 0) {
        if (anio % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

}