import 'package:flutter_test/flutter_test.dart';
import 'package:matrix_input/matrix_input.dart';

void main() {
  testWidgets('MatrixInput widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MatrixInput());
  });
}
