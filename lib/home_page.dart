import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // page
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BoxWidget(color: Colors.blue),
            BoxWidget(color: Colors.blue),
            BoxWidget(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class BoxWidget extends StatefulWidget {
  Color color;

  BoxWidget({
    Key? key,
    this.color = Colors.amber,
  }) : super(key: key);

  String method() => 'Empty method';

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  Color? color;
  BorderRadiusGeometry? borderRadius;
  BoxBorder? border;

  @override
  void initState() {
    super.initState();
    color = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.brown,
      Colors.cyan,
      Color(0xFF06324D),
      Color(0xFF8A6707),
    ];

    return InkWell(
      onTap: () {
        color = Colors.white;
        borderRadius = BorderRadius.circular(10);
        border = Border.all(
          color: Colors.red,
          width: 10,
        );
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 75,
        decoration: BoxDecoration(
          color: colors[Random().nextInt(3)],
          borderRadius: borderRadius,
          border: border,
        ),
        child: Text('${Random().nextInt(10)}'),
      ),
    );
  }
}
