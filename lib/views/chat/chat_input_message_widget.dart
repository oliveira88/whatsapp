import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/views/chat/chat_text_widget.dart';

class ChatInputMessageWidget extends StatelessWidget {
  const ChatInputMessageWidget({
    Key? key,
    required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: ChatText(textController: _textController),
          ),
          VoiceSendButton(textController: _textController)
        ],
      ),
    );
  }
}

class VoiceSendButton extends StatelessWidget {
  const VoiceSendButton({
    Key? key,
    required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      decoration: BoxDecoration(
        color: ColorTheme.GreenPrimary,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          _textController.text.isEmpty ? Icons.keyboard_voice : Icons.send,
          color: Colors.white,
        ),
      ),
    );
  }
}
