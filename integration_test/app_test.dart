

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:client_control/main.dart' as app;
void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Integration Test', (tester) async{
    app.main();
    await tester.pumpAndSettle();
    expect(find.text('Menu'), findsNothing);
    await Future.delayed(Duration(seconds: 2));
    await tester.tap(find.byIcon(Icons.menu));
    await Future.delayed(Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Menu'), findsOneWidget);
    await Future.delayed(Duration(seconds: 2));
  });


}