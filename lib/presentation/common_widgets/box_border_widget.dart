import 'package:flutter/material.dart';

class BoxBorderRadiusWidget extends StatelessWidget {
  final Color color;
  const BoxBorderRadiusWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
