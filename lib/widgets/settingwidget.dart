import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.grey,size: 32),
        title: Text('Service and Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15,10,10,0),
        width: 500,
        alignment: AlignmentDirectional.topStart,
        //color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Text('ACCOUNT',style: TextStyle(fontSize: 17,color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mi Account',style: TextStyle(fontSize: 20),),
                Row(
                  children: const [
                    Text('MohammedMotlaq',style: TextStyle(fontSize: 17,color: Colors.grey),),
                    Icon(Icons.arrow_forward_ios,size: 24,color: Colors.grey,),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Text('Settings',style: TextStyle(fontSize: 17,color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Advanced Settings',style: TextStyle(fontSize: 20),),
                Icon(Icons.arrow_forward_ios,size: 24,color: Colors.grey,),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text('Version',style: TextStyle(fontSize: 20,color: Colors.black),),
            ),
            Text('Current version 6.6.10.4i-935',style: TextStyle(fontSize: 17,color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
