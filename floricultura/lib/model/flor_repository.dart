import 'package:floricultura/model/Flor.dart';

class FlorRepository {
  static List<Flor> _flores = [];

  // get
  static List<Flor> get flores => _flores;

  // set
  static set flores(List<Flor> flores) => _flores = flores;

  void addFlor(Flor flor) {
    _flores.add(flor);
  }

  static void removeFlor(Flor flor) => _flores.remove(flor);

  static void printFlores() {
    for (Flor flor in _flores) {
      print(flor);
    }
  }

  static void printFlor(String especie) {
    for (Flor flor in _flores) {
      if (flor.especie == especie) {
        print(flor);
      }
    }
  }

  static void updateFlor(Flor flor) {
    for (var element in _flores) {
      if (element.especie == flor.especie) {
        element.quantidade = flor.quantidade;
        element.preco = flor.preco;
        element.categoria = flor.categoria;
      }
    }
  }

  static void deleteFlor(Flor flor) {
    _flores.remove(flor);
  }
}
