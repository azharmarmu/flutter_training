import 'package:flutter/material.dart';

import 'widgets/expanded_row_widget.dart';
import 'widgets/flexible_row_widget.dart';
import 'widgets/profile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter basics'),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            //first row - flexible
            FlexibleRowWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                height: 2,
                thickness: 5,
                color: Colors.black12,
              ),
            ),
            //second row - expanded
            ExpandedRowWidget(),
            Builder(
              builder: (BuildContext context) {
                final size = MediaQuery.of(context).size;
                return SizedBox(
                  height: size.height / 5,
                  width: size.width / 2,
                  child: Image.asset(
                    'assets/flower.jpeg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            //Image
            Image.network(
              'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000',
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584__340.png'),
            ),
            ProfileWidget(),
          ],
        ),
      ),
    );
  }
}