import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) => Container(
              padding: const EdgeInsets.all(8), child: Text("This Work!"))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Firestore.instance
                .collection("/chats/MtLH41jnmo9iKoY2I2qc/messeges")
                .snapshots()
                .listen((event) {
              print(event.documents[0]["text"]);
            });
          }),
    );
  }
}
