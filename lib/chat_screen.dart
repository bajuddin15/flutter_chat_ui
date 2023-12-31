import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: const IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.white,
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration: const InputDecoration.collapsed(
                    hintText: "Write your message"),
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  onPressed: () => _handleSubmitted(_textController.text),
                  icon: const Icon(Icons.send)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (_, int index) {
                  return _messages[index];
                })),
        const Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
