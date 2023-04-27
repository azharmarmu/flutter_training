import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common_widgets/buttons.dart';

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              SizedBox(height: 24),
              ProfileWidget(),
              SizedBox(height: 24),
              ProfileWidget(),
              SizedBox(height: 24),
              ButtonInBuildWidget(),
              SizedBox(height: 24),
              ButtonCustomWidget(),
              SizedBox(height: 24),

              SizedBox(
                height: 400,
                child: LayoutBuilder( // 400
                  builder: (
                    BuildContext ctx,
                    BoxConstraints constraints,
                  ) {
                    print('constraint height: ${constraints.maxHeight}');
                    print('infinity: ${double.infinity}'); //infinity
                    print(
                        'MediaQuery - build: ${MediaQuery.of(context).size.height}'); //852
                    print('MediaQuery - LB: ${MediaQuery.of(ctx).size.height}'); // 852
                    return Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: MediaQuery.of(context).size.height, //infinity - 400
                      color: Colors.cyan,
                      child: Text('Layout Builder Example'),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
