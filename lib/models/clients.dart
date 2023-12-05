import 'package:alura_flutter_client_control1/models/client.dart';
import 'package:flutter/material.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({
    required this.clients,
  });

  addClient({required Client client}) {
    clients.add(client);
    notifyListeners(); //It warns the ChangeNotifier, that reloads the screen
  }

  void remove(int index) {
    clients.removeAt(index);
    notifyListeners();
  }

}
