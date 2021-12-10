import 'package:flutter/material.dart';
import 'package:whatsapp/theme/theme.dart';
import 'package:whatsapp/views/chat/single_chat_page.dart';
import 'package:whatsapp/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: ColorTheme.Primary,
            ),
            primaryColor: ColorTheme.Primary,
            scaffoldBackgroundColor: ColorTheme.BackgroundPrimary,
          ),
          initialRoute: '/',
          routes: {
            '/': (c) => const Home(),
            '/single-chat': (c) => const SingleChat(),
          },
        );
      },
    );
  }
}
