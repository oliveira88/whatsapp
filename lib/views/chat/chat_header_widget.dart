import 'package:flutter/material.dart';

PreferredSizeWidget ChatHeader(
    {required String title, required String subtitle}) {
  return AppBar(
    titleSpacing: -4.0,
    title: Row(
      children: [
        CircleAvatar(
          radius: 16.0,
          backgroundImage: null,
          backgroundColor: Colors.grey[500],
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        )
      ],
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.videocam,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
    elevation: 0,
  );
}
