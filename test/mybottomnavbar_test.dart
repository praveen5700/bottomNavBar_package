// import 'package:flutter_test/flutter_test.dart';

// import 'package:mybottomnavbar/mybottomnavbar.dart';

// void main() {
//   test('adds one to input values', () {
//     final calculator = Calculator();
//     expect(calculator.addOne(2), 3);
//     expect(calculator.addOne(-7), -6);
//     expect(calculator.addOne(0), 1);
//   });
// }

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mybottomnavbar/mybottomnavbar.dart';


void main() {
  testWidgets('DynamicBottomNavBar Widget Test', (WidgetTester tester) async {
    final List<NavBarItem> items = [
      NavBarItem(icon: Icons.home, label: 'Home'),
      NavBarItem(icon: Icons.search, label: 'Search'),
      NavBarItem(icon: Icons.favorite, label: 'Favorite'),
    ];

    int selectedIndex = 0;
    int tappedIndex = -1;

    await tester.pumpWidget(
      MaterialApp(
        home: DynamicBottomNavBar(
          items: items,
          currentIndex: selectedIndex,
          onTap: (index) {
            tappedIndex = index;
          },
        ),
      ),
    );

    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    expect(selectedIndex, 0);
    expect(tappedIndex, -1);

    await tester.tap(find.byIcon(Icons.search));
    await tester.pump();

    expect(selectedIndex, 0); // selectedIndex should remain unchanged
    expect(tappedIndex, 1); // tappedIndex should be updated to 1
  });
}
