import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class SendMessages extends StatelessWidget {
  SendMessages({
    super.key,
    required this.screenSize,
    required this.personIndex,
    required this.onMessageSent,
  });

  final Size screenSize;
  final int personIndex;
  final Function onMessageSent;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _messageChat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: screenSize.width * 0.75,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "messages",
                ),
                controller: _messageChat,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a message';
                  }
                  return null;
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                showallMessages.show[personIndex].chats.addAll(
                  {
                    showallMessages.show[personIndex].chats.length + 2 : _messageChat.text,
                  },
                );
                _messageChat.clear(); 
                onMessageSent();
              }
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}