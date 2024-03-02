import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('almousleck'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  'almousleck',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('This is thug life... 4 hours'),
                leading: Icon(
                  Icons.maps_ugc_rounded,
                  size: 50,
                ),
                trailing: Icon(Icons.videocam, size: 30),
              );
            }),
      ),
    );
  }
}
