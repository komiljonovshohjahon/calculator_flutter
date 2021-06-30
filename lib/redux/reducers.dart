import './actions.dart';
import './store.dart';

AppState reducers(AppState prevState, dynamic action) {
  bool newtoogleDark;
  double newsum;
  double newsubtract;
  double newmultiply;
  double newdivide;
  String newfirst;
  String newsecond;

  if (action == ToogleIsDarkAction) {
    newtoogleDark = !prevState.isDark;
    // print(prevState.isDark);
    return AppState.copyWith(prevState: prevState, isDark: newtoogleDark);
  } else if (action is ChangeFirstAction) {
    newfirst = prevState.first + action.payload.toString();
    return AppState.copyWith(prevState: prevState, first: newfirst);
  } else if (action is ChangeSecondAction) {
    newsecond = prevState.second + action.payload.toString();
    return AppState.copyWith(prevState: prevState, second: newsecond);
  } else if (action == ClearAction) {
    return AppState.copyWith(prevState: AppState.initial());
  }
  return AppState.copyWith(prevState: prevState);
}
