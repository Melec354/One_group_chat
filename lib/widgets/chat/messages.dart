import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/chat/message_bubble.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('chat')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final chatDocs = snapshot.data?.docs;
          return ListView.builder(
              reverse: true,
              itemCount: chatDocs?.length,
              itemBuilder: (context, index) {
                return MessageBubble(
                  message: chatDocs?[index]['text'],
                  myMessage: chatDocs?[index]['userId'] ==
                      FirebaseAuth.instance.currentUser?.uid,
                  key: ValueKey(chatDocs?[index].id),
                  userName: chatDocs?[index]['username'],
                  userImage: chatDocs?[index]['userImage'],
                );
              });
        });
  }
}
