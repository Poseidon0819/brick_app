import 'package:brick_app/model/brick_set.dart';
import 'package:brick_app/model/rebrickable_model.dart';
import 'package:brick_app/pages/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class RebrickableModelMock extends Mock implements RebrickableModel {}

main() {
  createApp({List<BrickSet> brickSets}) =>
      ChangeNotifierProvider<RebrickableModel>(
        create: (_) {
          final mock = RebrickableModelMock();
          when(mock.getUsersSetLists())
              .thenAnswer((_) async => brickSets ?? []);
          return mock;
        },
        child: MaterialApp(
          home: OverviewPage(),
        ),
      );

  group('list view', () {
    testWidgets('does show a message, when there are no set lists',
        (tester) async {
      await tester.pumpWidget(createApp());
      await tester.pumpAndSettle();

      expect(
          find.text('You have no set lists in your account.'), findsOneWidget);
    });

    testWidgets('does show a tile for each set list', (tester) async {
      await tester.pumpWidget(createApp(brickSets: [
        BrickSet.fromJson({
          "id": 521857,
          "is_buildable": true,
          "name": "Set List",
          "num_sets": 23
        }),
        BrickSet.fromJson({
          "id": 521853,
          "is_buildable": true,
          "name": "Second Set List",
          "num_sets": 3
        })
      ]));

      await tester.pumpAndSettle();

      final listViewFinder = find.byKey(ObjectKey('setList'));
      expect(listViewFinder, findsOneWidget);
      expect(
          find.descendant(of: listViewFinder, matching: find.text('Set List')),
          findsOneWidget);
      expect(
          find.descendant(of: listViewFinder, matching: find.text('23 sets')),
          findsOneWidget);
      expect(
          find.descendant(
              of: listViewFinder, matching: find.text('Second Set List')),
          findsOneWidget);
      expect(find.descendant(of: listViewFinder, matching: find.text('3 sets')),
          findsOneWidget);
    });
  });
}
