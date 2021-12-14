import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/views/chat/chat_header_widget.dart';
import 'package:whatsapp/views/chat/chat_input_message_widget.dart';
import 'package:whatsapp/views/chat/chat_text_widget.dart';
import 'package:whatsapp/views/chat/message_balloon_widget.dart';

class Teste {
  final String message;
  final bool fromYou;

  Teste(this.message, this.fromYou);

  Teste.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        fromYou = json['fromYou'];

  Map<String, dynamic> toJson() => {
        'message': message,
        'fromYou': fromYou,
      };
}

class SingleChat extends StatelessWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    final List<Map<String, dynamic>> messages = [
      {
        'message': 'KKKKKKKKKKKKKKKKKKKKKKKKKKKKKK',
        'fromYou': 'true',
      },
      {
        'message': 'This is a short message.',
        'fromYou': 'false',
      },
      {
        'message': 'This is a relatively longer line of text.',
        'fromYou': 'false',
      },
      {
        'message': 'Hi!',
        'fromYou': 'true',
      },
    ];
    return Scaffold(
      appBar: ChatHeader(
        title: 'MAIOR NOME DE TODOS LOS T',
        subtitle: 'You',
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return MessageBalloonWidget(message: messages[index]);
              },
            ),
          ),
          ChatInputMessageWidget(textController: _textController),
        ],
      ),
    );
  }
}
