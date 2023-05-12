import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_images.dart';
import 'package:flutter_training/config/app_routes.dart';

class HomePage extends StatelessWidget {
  int aProp = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Column(
        children: [
          Text('Text'),
          Image.network(AppImages.image1),
          ElevatedButton(
            onPressed: () {
              //normal push
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return SettingsPage();
              //     },
              //   ),
              // );

              //named push
              Navigator.pushNamed(context, AppRoutes.settings);
            },
            child: Text(
              'Go to Settings',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: ,
      // floatingActionButton: ,
    );
  }

  void helloFunction() {}
}
