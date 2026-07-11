import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_application/counter_screen.dart';

void main() {
  testWidgets('Counter should increase when button is pressed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byKey(const Key('increment_button')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
