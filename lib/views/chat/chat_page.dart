import 'package:flutter/material.dart';
import 'package:whatsapp/views/chat/chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            body: ListView.builder(
              itemCount: 55,
              itemBuilder: (context, itemBuilder) {
                return Chat();
              },
            ),
          ),
        ),
      ],
    );
  }
}
