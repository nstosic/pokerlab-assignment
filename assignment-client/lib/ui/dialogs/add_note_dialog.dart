import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/localization/localization_extensions.dart';
import 'package:flutter/material.dart';

class AddNoteDialog extends StatelessWidget {
  AddNoteDialog({
    this.todo,
    super.key,
  }) {
    _controller.text = todo?.title ?? '';
  }

  final _controller = TextEditingController();

  final Todo? todo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'add_note'.localize,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            final message = _controller.text;
            Navigator.of(context).pop(
              <String, dynamic>{
                'message': message,
                'todo': todo,
              },
            );
          },
          child: Text(
            'ok'.localize,
            style: const TextStyle(color: Colors.lightBlue),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'cancel'.localize,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
