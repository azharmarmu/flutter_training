import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common_widgets/box_border_widget.dart';

class FlexibleRowWidget extends StatelessWidget {
  const FlexibleRowWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text('Hello world from Azhar - '),
        ),
        Flexible(
          child: Text('Flexible 2'),
        ),
        BoxBorderRadiusWidget(color: Colors.red),
        BoxBorderRadiusWidget(color: Colors.blue),
        BoxBorderRadiusWidget(color: Colors.orange),
      ],
    );
  }
}
