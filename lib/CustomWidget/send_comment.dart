import 'package:cology/Model/cernt_student.dart';
import 'package:flutter/material.dart';

class SendComment extends StatefulWidget {
  final Function(String, String, String, String) comment;
  const SendComment({
    super.key,
    required this.screenWidth,
    required this.comment, required this.onSend,
  });

  final double screenWidth;
  final Function onSend;

  @override
  State<SendComment> createState() => _SendCommentState();
}

class _SendCommentState extends State<SendComment> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _controller = TextEditingController();
  late DateTime currentTime;

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
              width: widget.screenWidth * 0.75,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "ارسال تعليق",
                ),
                controller: _controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ادخل نص صحيح";
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_formKey.currentState!.validate()) {
                    DateTime now = DateTime.now();
                    String formattedTime =
                        "${now.hour}:${now.minute.toString().padLeft(2, '0')} ${now.hour >= 12 ? 'م' : 'ص'}";
                    widget.comment(
                      CerntStudent.student[0].name,
                      "طالب",
                      _controller.text,
                      formattedTime,
                    );
                    _controller.clear();
                    widget.onSend();
                  }
                });
              },
              child: const CircleAvatar(
                child: Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
