import 'package:assignment_client/ui/base/base_bloc.dart';
import 'package:assignment_client/ui/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<S extends BaseState> extends StatefulWidget {
  const BaseView({
    required this.bloc,
    required this.builder,
    this.shouldRebuild,
    this.child,
    super.key,
  });

  final BaseBloc<S> bloc;
  final Widget Function(BuildContext, S, Widget?) builder;
  final bool Function(S, S)? shouldRebuild;
  final Widget? child;

  @override
  State<BaseView> createState() => _BaseViewState<S>();
}

class _BaseViewState<S extends BaseState> extends State<BaseView<S>> {
  @override
  void initState() {
    super.initState();
    widget.bloc.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc<S>, S>(
      bloc: widget.bloc,
      builder: (context, state) => widget.builder(context, state, widget.child),
      buildWhen: widget.shouldRebuild,
    );
  }
}
