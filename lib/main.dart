import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: MyGame());
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    add(
      Player()
        ..position = size / 2
        ..width = 50
        ..height = 50
        ..anchor = Anchor.center,
    );
  }
}

class Player extends PositionComponent {
  static final _paint = Paint()..color = const Color.fromARGB(255, 158, 77, 39);
  static final _outline = Paint()
  ..color = const Color.fromARGB(99, 102, 255, 0)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 10;

  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
    canvas.drawRect(size.toRect(), _outline);
  }
}
