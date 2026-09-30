import 'package:flutter_test/flutter_test.dart';
import 'package:foody_ui_kit/main.dart';

void main() {
  testWidgets('Food delivery app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FoodDeliveryApp());

    // Verify that the title or key sections render
    expect(find.text('Deliver to'), findsOneWidget);
  });
}
