import 'package:flutter/material.dart';
import 'package:flutter_training/config/app_images.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool enableSave = false;
  bool s1 = false;
  bool s2 = false;

  @override
  Widget build(BuildContext context) {
    print('SettingPage Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ACCOUNT",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network(AppImages.image1),
              ),
              title: Text(
                "Maverick Damnger",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text(
                "Private Account",
                style: TextStyle(fontSize: 20),
              ),
              trailing: SwitchOnOffWidget(
                value: s1,
                onChanged: () {
                  enableSave = !enableSave;
                  s1 = !s1;
                  setState(() {});
                },
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Theme",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text('Dark Theme'),
              trailing: SwitchOnOffWidget(
                value: s2,
                onChanged: () {
                  s2 = !s2;
                  setState(() {});
                },
              ),
              tileColor: Colors.white,
            ),
          ),
          if (enableSave)
            ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            ),
        ],
      ),
    );
  }
}

class SwitchOnOffWidget extends StatelessWidget {
  final bool value;
  final Function() onChanged; //callback
  const SwitchOnOffWidget({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('SwitchOnOffWidget Build');
    return Switch(
      value: value,
      onChanged: (bool value) {
        onChanged();
      },
    );
  }
}
