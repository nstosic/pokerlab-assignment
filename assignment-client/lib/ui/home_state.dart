import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/ui/base/base_state.dart';

class HomeState extends BaseState {
  HomeState({this.items = const <Todo>[]});

  final List<Todo> items;
}