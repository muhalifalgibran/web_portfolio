import 'package:flutter/material.dart';

class UnderConstructionWidget extends StatefulWidget {
  const UnderConstructionWidget({super.key});

  @override
  State<UnderConstructionWidget> createState() =>
      _UnderConstructionWidgetState();
}

class _UnderConstructionWidgetState extends State<UnderConstructionWidget>
    with TickerProviderStateMixin {
  static List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
  ];

  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    )..repeat();

    _animation = ColorTween(
      begin: colors[0],
      end: colors[0],
    ).animate(_controller)
      ..addListener(() {
        setState(() {
          _animation = ColorTween(
            begin: colors[0],
            end: (colors..shuffle()).first,
          ).animate(_controller);
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Under Construction...',
      style: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: _animation.value,
      ),
    );
  }
}
