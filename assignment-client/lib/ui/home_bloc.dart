import 'dart:async';

import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/ui/base/base_bloc.dart';
import 'package:assignment_client/ui/home_state.dart';

class HomeBloc extends BaseBloc<HomeState> {
  HomeBloc(
    super.initialState, {
    required this.todoService,
  });

  final TodoServiceClient todoService;

  @override
  FutureOr<void> onInit() {
    final stream = todoService.getTodos(GetTodoRequest());
    final _ = stream.listen(
      (response) {
        emit(HomeState(items: response.items));
      },
    );
  }

  void onAddTodo(String message) {
    final request = CreateTodoRequest()..title = message;
    todoService.createTodo(request);
  }

  void onEditTodo(Todo todo) {
    final request = UpdateTodoRequest();
    request.id = todo.id;
    request.title = todo.title;
    request.completed = todo.completed;
    todoService.updateTodo(request);
  }

  void onDeleteTodo(Todo todo) {
    final request = DeleteTodoRequest()..id = todo.id;
    todoService.deleteTodo(request);
  }

  void onTodoItemStatusChanged(Todo todo, bool completed) {
    final request = UpdateTodoRequest();
    request.id = todo.id;
    request.title = todo.title;
    request.completed = completed;
    todoService.updateTodo(request);
  }
}
