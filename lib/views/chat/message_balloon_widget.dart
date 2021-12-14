import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';

class MessageBalloonWidget extends StatelessWidget {
  const MessageBalloonWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Map<String, dynamic> message;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: message['fromYou'] == 'true'
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
          decoration: message['fromYou'] == 'true'
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
                  message['message'] ?? '',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
