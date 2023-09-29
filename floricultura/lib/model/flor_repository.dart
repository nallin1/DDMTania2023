import 'package:floricultura/model/Flor.dart';

class FlorRepository {
  static List<Flor> _flores = [];

  // get
  static List<Flor> get flores => _flores;
   
  // set
  static set flores(List<Flor> flores) => _flores = flores;

  void addFlor(Flor flor) => _flores.add(flor);

  static void removeFlor(Flor flor) => _flores.remove(flor);

  static getFlorByEspecie(String especie) {
    for (Flor flor in _flores) {
      if (flor.especie == especie) {
        return flor;
      }
    }
    return null;
  }

  // print all flores
  static void printFlores() {
    for (Flor flor in _flores) {
      print(flor);
    }
  }

  /*
  static void updateFlor(String especie, double preco) {
    Flor flor = getFlorByEspecie(especie);
  }
  */

  static void deleteFlor(Flor flor) {
    _flores.remove(flor);
  }

}
