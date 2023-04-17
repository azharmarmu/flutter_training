import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // page
      body: SafeArea(
        child: Container(
          height: 300,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxWidget(color: Colors.red),
              BoxWidget(color: Colors.green),
              BoxWidget(color: Colors.blue),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //anonymous function
          print('FAB Click');
        }, // value eqaute
      ),
    );
  }
}

class BoxWidget extends StatefulWidget {
  Color color;

  BoxWidget({
    Key? key,
    this.color = Colors.amber,
  }) : super(key: key);

  String method() => 'Empty method';

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  BoxShape shape = BoxShape.rectangle;
  Color? color;

  @override
  void initState() {
    super.initState();
    color = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //BL
        color = Colors.amber;
        shape = BoxShape.circle;
        setState(() {}); // re-render
        // make sure ui is rendered
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 75,
        decoration: BoxDecoration(
          color: color,
          shape: shape,
        ),
        child: const Text('Change'),
      ),
    );
  }
}
