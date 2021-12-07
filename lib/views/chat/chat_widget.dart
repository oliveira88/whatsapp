import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(top: 12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[500],
              radius: 25,
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Quando terminar avisa ae',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: ColorTheme.GreyPrimary),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '13/08/25',
                      style: TextStyle(color: ColorTheme.GreyPrimary),
                    ),
                    false ? Text('visto') : Text(''),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
