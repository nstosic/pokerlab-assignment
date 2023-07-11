import 'package:assignment_client/localization/localization_extensions.dart';
import 'package:flutter/material.dart';

class DeleteNoteDialog extends StatelessWidget {
  const DeleteNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        'are_you_sure'.localize,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(
            'yes'.localize,
            style: const TextStyle(color: Colors.lightBlue),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(
            'no'.localize,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
