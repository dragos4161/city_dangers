import 'package:auth_app/src/actions/index.dart';
import 'package:auth_app/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<DangerState> dangerReducer = combineReducers(<Reducer<DangerState>>[
  TypedReducer<DangerState, GetUserDangersSuccessful>(_getUserDangersSuccessful),
  TypedReducer<DangerState, InitializeMarkersSuccessful>(_initializeMarkersSuccessful),
]);

DangerState _getUserDangersSuccessful(DangerState state, GetUserDangersSuccessful action) {
  return state.copyWith(
    dangers: action.dangers,
  );
}

DangerState _initializeMarkersSuccessful(DangerState state, InitializeMarkersSuccessful action) {
  return state.copyWith(
    allDangers: action.dangers,
  );
}
