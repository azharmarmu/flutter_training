import 'package:flutter/material.dart';

import 'widgets/contact_item.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() {
    print('createState');
    return _ContactsPageState();
  }
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didUpdateWidget(covariant ContactsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          itemBuilder: (BuildContext ctx, int index) {
            return ContactItem(
              item: contactItems[index],
              onLongPress: () {
                // ;

                showDialog(
                  context: ctx,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Alert!!!'),
                      content: Text('Are you sure?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              contactItems.removeAt(index);
                              Navigator.pop(context);
                              setState(() {});
                              print(contactItems);
                            },
                            child: Text('OK')),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return Divider(
              color: Colors.grey,
              thickness: 0.2,
            );
          },
          itemCount: contactItems.length,
        ),
      ),
    );
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}

List contactItems = [
  {
    'name': 'XYZ',
    'tag': 'mobile',
  },
  {
    'name': 'Name2',
    'tag': 'phone',
  },
  {
    'name': 'Name3',
    'tag': 'mobile',
  },
  {
    'name': 'Name4',
    'tag': 'india',
  },
  {
    'name': 'Name5',
    'tag': 'mobile',
  },
  {
    'name': 'Name6',
    'tag': 'usa',
  },
  {
    'name': 'Delete Data',
    'tag': 'mobile',
  },
  {
    'name': 'Name8',
    'tag': 'mobile',
  },
  {
    'name': 'Name9',
    'tag': 'india',
  },
];
