import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common_widgets/box_border_widget.dart';

class ExpandedRowWidget extends StatelessWidget {
  const ExpandedRowWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text('Hello world from Azhar - '),
        ),
        Expanded(
          flex: 2,
          child: Text('Expanded 2'),
        ),
        BoxBorderRadiusWidget(color: Colors.amber),
        BoxBorderRadiusWidget(color: Colors.blueGrey),
      ],
    );
  }
}
