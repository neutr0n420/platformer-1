import 'package:flame/extensions.dart';
import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platformer_1/main.dart';

final gameTester = FlameTester(
  MyGame.new,
  gameSize: Vector2(800, 1024),
);

void main() {
  group('Game tests', () {
    TestWidgetsFlutterBinding.ensureInitialized();

    gameTester.testGameWidget(
      'game widget can be created',
      verify: (game, tester) async {
        expect(find.byGame<MyGame>(), findsOneWidget);
      },
    );
  });
}
