import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common_widgets/negative_button.dart';
import 'package:flutter_training/presentation/common_widgets/positive_button.dart';

class ButtonInBuildWidget extends StatelessWidget {
  const ButtonInBuildWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TextButton
        TextButton(
          onPressed: () => print('TextButton onTap'),
          onLongPress: () => print('TextButton onLongPress'),
          child: Text('Text Button'),
        ),
        ElevatedButton(
          onPressed: () => print('ElevatedButton onTap'),
          child: Text('Elevated Button'),
        ),
        FloatingActionButton(onPressed: () {}),
        IconButton(
          onPressed: () => print('IconButton onTap'),
          icon: Icon(Icons.ac_unit),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text('MaterialButton'),
        ),
      ],
    );
  }
}

class ButtonCustomWidget extends StatelessWidget {
  const ButtonCustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Normal button
        Row(
          children: [
            PositiveButton(
              text: 'OK',
              onTap: () {
                print('OK Tapped');
              },
            ),
            SizedBox(width: 24),
            NegativeButton(
              text: 'Reject',
              onTap: () {
                print('Reject Tapped');
              },
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            PositiveButton(
              text: 'Apply',
              onTap: () {
                print('Apply Tapped');
              },
            ),
            new SizedBox(width: 24),
            new NegativeButton(
              text: 'Cancel',
              onTap: () {
                //BL
                print('Cancel Tapped');
              },
            ),
          ],
        ),
      ],
    );
  }
}
