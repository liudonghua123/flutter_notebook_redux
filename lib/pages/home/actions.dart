import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'constant.dart';

ThunkAction asyncIncrement() {
  return (Store store) async {
    await Future.delayed(Duration(seconds: 3)); // 延迟 3 秒

    store.dispatch(INCREMENT);
  };
}
