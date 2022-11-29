import 'package:chatapp/chat/views/widgets/message_bubble.dart';
import 'package:chatapp/chat/views/widgets/message_text_field.dart';
import 'package:chatapp/chat/views/widgets/video_call_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("chat"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const VideoCallScreen()));
            },
            icon: Icon(Icons.video_camera_front),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              reverse: true,
              itemCount: _message.length,
              itemBuilder: (_, index) => _message[index],
              separatorBuilder: (_, index) => SizedBox(
                height: 16,
              ),
            ),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _message = <MessageBubble>[
  MessageBubble(
      profileImageUrl:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      message: "this app is mone don't you dare call it yours",
      date: "nov 27,5:12 PM"),
  MessageBubble(
      profileImageUrl:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      message: "this app is mone don't you dare call it yours",
      date: "nov 27,5:12 PM"),
  MessageBubble(
      profileImageUrl:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      message: "this app is mone don't you dare call it yours",
      date: "nov 27,5:12 PM"),
  MessageBubble(
      profileImageUrl:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      message: "this app is mone don't you dare call it yours",
      date: "nov 27,5:12 PM"),
  MessageBubble(
      profileImageUrl:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      message: "this app is mone don't you dare call it yours",
      date: "nov 27,5:12 PM"),
];
