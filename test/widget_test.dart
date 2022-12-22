import 'dart:math';

import 'package:client_control/components/hamburger_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing the Menu', () {
    testWidgets('Hamburguer Menu should have "Menu"', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HamburgerMenu(),
      ));
      expect(find.text('Menu'), findsOneWidget);
    });

    testWidgets('Hamburguer Menu should have "Gerenciar clientes"', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HamburgerMenu(),
      ));
      expect(find.text('Gerenciar clientes'), findsOneWidget);
    });
    testWidgets('Hamburguer Menu should have "Tipos de clientes"', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HamburgerMenu(),
      ));
      expect(find.text('Tipos de clientes'), findsOneWidget);
    });

    testWidgets('Hamburguer Menu should have "Sair"', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HamburgerMenu(),
      ));
      expect(find.text('Sair'), findsOneWidget);
    });
  });
}
