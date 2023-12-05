import 'package:alura_flutter_client_control1/models/client_type.dart';
import 'package:flutter/material.dart';

class Types extends ChangeNotifier {
  List<ClientType> types;

  Types({
    required this.types,
  });

  void addType({required ClientType type}) {
    types.add(type);
    notifyListeners(); //It warns the ChangeNotifier, that reloads the screen
  }

  void remove(int index) {
    types.removeAt(index);
    notifyListeners();
  }

}
