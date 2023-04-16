import 'package:flutter/material.dart';
import 'package:flutter_form/about_screen.dart';
import 'package:flutter_form/contact_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Contact Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Contacts(),
    ));
    expect(find.text('Contacts'), findsOneWidget);
    await tester.press(find.text('Submit'));
    await tester.pump();
  });
  testWidgets('About Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AboutScreen(),
    ));
    expect(find.text('About Screen'), findsNothing);
  });
}
