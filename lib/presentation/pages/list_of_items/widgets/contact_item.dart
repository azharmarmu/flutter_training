import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Map<String, dynamic> item;
  final Function() onLongPress;

  const ContactItem({
    Key? key,
    required this.item,
    required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPress: onLongPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                item['name'],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
              Text(
                item['tag'],
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Monday',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(width: 2),
              Icon(
                Icons.info_outline,
                color: Colors.blueAccent,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
