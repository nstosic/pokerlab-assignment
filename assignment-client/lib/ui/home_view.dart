import 'dart:convert';

import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/localization/localization_extensions.dart';
import 'package:assignment_client/ui/dialogs/add_note_dialog.dart';
import 'package:assignment_client/ui/base/base_view.dart';
import 'package:assignment_client/ui/dialogs/delete_note_dialog.dart';
import 'package:assignment_client/ui/elements/todo_list_item.dart';
import 'package:assignment_client/ui/home_bloc.dart';
import 'package:assignment_client/ui/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeState>(
      bloc: HomeBloc(
        HomeState(),
        todoService: context.read<TodoServiceClient>(),
      ),
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('title'.localize),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final result = await showDialog<Map<String, dynamic>>(
                context: context,
                builder: (context) => AddNoteDialog(),
              );
              if (result != null) {
                context.read<HomeBloc>().onAddTodo(result['message']);
              }
            },
            child: const Icon(Icons.add),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) =>
                _buildListItem(context, state.items[index]),
            itemCount: state.items.length,
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, Todo item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TodoListItem(
        item: item,
        onEditPressed: (todo) async {
          final result = await showDialog<Map<String, dynamic>>(
            context: context,
            builder: (context) => AddNoteDialog(todo: todo),
          );
          if (result != null) {
            todo.setField(2, result['message']);
            context.read<HomeBloc>().onEditTodo(todo);
          }
        },
        onDeletePressed: (todo) async {
          final result = await showDialog<bool>(
            context: context,
            builder: (context) => DeleteNoteDialog(),
          );
          if (result ?? false) {
            context.read<HomeBloc>().onDeleteTodo(todo);
          }
        },
      ),
    );
  }
}
