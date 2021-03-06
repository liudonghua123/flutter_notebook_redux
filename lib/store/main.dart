import 'package:redux/redux.dart';
import '../pages/home/reducers.dart';

class AppState {
  final int count;
  final int clickCount;

  AppState({
    this.count,
    this.clickCount,
  });

  AppState copyWith({count, clickCount}) {
    return AppState(
      count: count ?? this.count,
      clickCount: clickCount ?? this.clickCount,
    );
  }

  static AppState initialState() {
    return AppState(
      count: 0,
      clickCount: 0,
    );
  }
}

final reducers = combineReducers<AppState>([
  counterReducer,
  valueReducer,
]);
