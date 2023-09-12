import 'dart:math';

import 'package:client_control/models/client.dart';
import 'package:client_control/models/client_type.dart';
import 'package:client_control/models/clients.dart';
import 'package:client_control/models/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Clients Test', () {
    final matheus = Client(
        name: 'Matheus',
        email: 'matheus@email.com',
        type: ClientType(name: 'Gold', icon: Icons.star));

    test('Clients model should add a new client', () {
      var clients = Clients(clients: []);
      clients.add(matheus);
      clients.add(matheus);
      expect(clients.clients, [matheus, matheus]);
    });

    test('Clients model should remove a client', () {
      var clients = Clients(clients: [matheus, matheus, matheus]);
      clients.remove(0);
      clients.remove(1);
      expect(clients.clients, [matheus]);
    });
  });

  group('Types Test', () {
    final gold = ClientType(name: 'Gold', icon: Icons.star);

    test('Types model should add a new type', () {
      var types = Types(types: []);
      types.add(gold);
      types.add(gold);
      expect(types.types, [gold, gold]);
    });

    test('Types model should remove a type', () {
      var types = Types(types: [gold, gold, gold]);
      types.remove(0);
      types.remove(1);
      expect(types.types, [gold]);
    });
  });
}
