import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter/main.dart';
import 'package:test_flutter/modeli/stavka.dart';

void main() {
  for (final velicina in const [Size(320, 480), Size(360, 640), Size(411, 891)]) {
    testWidgets('popis i detalji bez preljeva na ${velicina.width}x${velicina.height}',
        (tester) async {
      tester.view.physicalSize = velicina;
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(const ParkoviApp());
      expect(tester.takeException(), isNull);

      for (final park in parkovi) {
        final naziv = find.text(park.naziv);
        await tester.scrollUntilVisible(naziv, 100);
        await tester.tap(naziv);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.text(park.opis), findsOneWidget);

        await tester.pageBack();
        await tester.pumpAndSettle();
        expect(find.text('Nacionalni parkovi'), findsOneWidget);
      }
    });
  }
}
