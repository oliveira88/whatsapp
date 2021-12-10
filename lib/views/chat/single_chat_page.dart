import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/views/chat/chat_header_widget.dart';

class SingleChat extends StatelessWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    return Scaffold(
      appBar: ChatHeader(
        title: 'MAIOR NOME DE TODOS LOS T',
        subtitle: 'You',
      ),
      body: Column(
        children: [
          Text('Bomdia'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 4),
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
                                textCapitalization:
                                    TextCapitalization.sentences,
                                cursorWidth: 2,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Message',
                                  hintStyle: TextStyle(
                                    color: ColorTheme.GreyPrimary,
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
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
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                  decoration: BoxDecoration(
                    color: ColorTheme.GreenPrimary,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      _textController.text.isEmpty
                          ? Icons.keyboard_voice
                          : Icons.send,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
