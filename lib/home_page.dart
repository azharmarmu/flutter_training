import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

int aProp =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Column(
        children: [
          Text('Text'),
          Image.network(''),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Go to Settings',
             style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16,),
             ),
          ),
        ],
      ),
      bottomNavigationBar: ,
      floatingActionButton: ,
    );
  }

  void helloFunction(){}
}
