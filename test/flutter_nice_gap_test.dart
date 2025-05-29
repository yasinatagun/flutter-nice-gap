import 'package:flutter/material.dart';
import 'package:flutter_nice_gap/flutter_nice_gap.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Gap Widget Tests', () {
    testWidgets('Gap in Row creates horizontal spacing', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Row(children: [const Text('Left'), Gap(20), const Text('Right')])),
        ),
      );

      // Find the SizedBox created by Gap
      final SizedBox gap = tester.widget<SizedBox>(find.ancestor(of: find.text('Right'), matching: find.byType(SizedBox)));

      // Verify horizontal spacing
      expect(gap.width, 20);
      expect(gap.height, 0);
    });

    testWidgets('Gap in Column creates vertical spacing', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Column(children: [const Text('Top'), Gap(20), const Text('Bottom')])),
        ),
      );

      // Find the SizedBox created by Gap
      final SizedBox gap = tester.widget<SizedBox>(find.ancestor(of: find.text('Bottom'), matching: find.byType(SizedBox)));

      // Verify vertical spacing
      expect(gap.width, 0);
      expect(gap.height, 20);
    });

    testWidgets('Gap with zero size creates no spacing', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Row(children: [const Text('Left'), Gap(0), const Text('Right')])),
        ),
      );

      // Find the SizedBox created by Gap
      final SizedBox gap = tester.widget<SizedBox>(find.ancestor(of: find.text('Right'), matching: find.byType(SizedBox)));

      // Verify no spacing
      expect(gap.width, 0);
      expect(gap.height, 0);
    });
  });
}
