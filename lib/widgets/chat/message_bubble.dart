import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {required Key key,
      required this.message,
      required this.myMessage,
      required this.userName,
      required this.userImage});

  final String message;
  final bool myMessage;
  final String userName;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          mainAxisAlignment:
              myMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: myMessage ? Colors.grey[300] : Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                  bottomLeft: !myMessage
                      ? const Radius.circular(0)
                      : const Radius.circular(12),
                  bottomRight: myMessage
                      ? const Radius.circular(0)
                      : const Radius.circular(12),
                ),
              ),
              width: 140,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Column(
                crossAxisAlignment: myMessage
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: myMessage ? Colors.black : Colors.white),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: myMessage ? Colors.black : Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: -2,
            left: myMessage ? null : 112,
            right: myMessage ? 112 : null,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ))
      ],
    );
  }
}
