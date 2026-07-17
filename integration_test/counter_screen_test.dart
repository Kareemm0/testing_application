import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_application/counter_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('CounterScreen increments when the button is tapped', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byKey(const Key('counter_text')), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byKey(const Key('increment_button')));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byKey(const Key('counter_text')), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
  });
}
