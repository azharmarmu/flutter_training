import 'package:flutter/material.dart';

class PositiveButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const PositiveButton({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          onTap: onTap, // reference equality
          //onTap: () => onTap, // value equality
          splashColor: Colors.blueGrey,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
