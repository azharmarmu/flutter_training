import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                child: CircleWidget(
                  color: Colors.red,
                  height: 250,
                  width: 250,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CircleWidget(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width/2 - (250/2),
                child: CircleWidget(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const CircleWidget({
    Key? key,
    required this.color,
    this.width = 50.0,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
