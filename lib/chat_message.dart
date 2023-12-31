import 'package:flutter/material.dart';

const String _name = "Bajuddin";

class ChatMessage extends StatelessWidget {
  final String text;

  const ChatMessage({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              child: Text("B"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Bajuddin Khan",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(text)
            ],
          )
        ],
      ),
    );
  }
}
