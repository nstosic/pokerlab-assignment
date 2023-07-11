import 'dart:async';

import 'package:assignment_client/ui/base/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<S extends BaseState> extends Cubit<S> {
  BaseBloc(super.initialState);

  FutureOr<void> onInit();
}
