import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';

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
          VoiceSendButton(textController: _textController),
        ],
      ),
    );
  }
}

class ChatText extends StatelessWidget {
  const ChatText({
    Key? key,
    required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          decoration: BoxDecoration(
            color: ColorTheme.Primary,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.emoji_emotions,
                  color: ColorTheme.GreyPrimary,
                ),
              ),
              Flexible(
                child: TextField(
                  controller: _textController,
                  cursorColor: ColorTheme.GreenPrimary,
                  textCapitalization: TextCapitalization.sentences,
                  cursorWidth: 2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    hintStyle: TextStyle(
                      color: ColorTheme.GreyPrimary,
                    ),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.attach_file,
                  color: ColorTheme.GreyPrimary,
                ),
              ),
              _textController.text.isEmpty
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        color: ColorTheme.GreyPrimary,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
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
