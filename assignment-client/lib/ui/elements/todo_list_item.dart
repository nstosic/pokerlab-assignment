import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/ui/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    required this.item,
    required this.onEditPressed,
    required this.onDeletePressed,
    super.key,
  });

  final Todo item;
  final Future<void> Function(Todo todo) onEditPressed;
  final Future<void> Function(Todo todo) onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16.0),
        Expanded(
          child: Text(
            item.title,
          ),
        ),
        Checkbox(
          value: item.completed,
          onChanged: (newValue) {
            if (newValue != null) {
              context.read<HomeBloc>().onTodoItemStatusChanged(item, newValue);
            }
          },
        ),
        IconButton(
          onPressed: () async => onEditPressed(item),
          icon: const Icon(
            Icons.edit,
          ),
        ),
        IconButton(
          onPressed: () async => onDeletePressed(item),
          icon: const Icon(
            Icons.delete,
          ),
        ),
        const SizedBox(width: 8.0),
      ],
    );
  }
}
