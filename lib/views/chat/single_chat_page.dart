import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/views/chat/chat_header_widget.dart';
import 'package:whatsapp/views/chat/chat_input_message_widget.dart';
import 'package:whatsapp/views/chat/chat_text_widget.dart';

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
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: messages[index]['fromYou'] == 'true'
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8.0,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                        minWidth: MediaQuery.of(context).size.width * 0.2,
                      ),
                      decoration: messages[index]['fromYou'] == 'true'
                          ? BoxDecoration(
                              color: ColorTheme.GreenSecondary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            )
                          : BoxDecoration(
                              color: ColorTheme.Primary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 14),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: 18,
                              right: 0,
                              child: Text(
                                '13:03',
                                style: TextStyle(color: ColorTheme.GreyPrimary),
                              ),
                            ),
                            Text(
                              messages[index]['message'] ?? '',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          ChatInputMessageWidget(textController: _textController),
        ],
      ),
    );
  }
}
