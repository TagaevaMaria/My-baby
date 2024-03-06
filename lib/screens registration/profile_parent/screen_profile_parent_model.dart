import 'package:flutter/material.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';
import '../../main_screen/main_screen.dart';


class ScreenProfileParentModel extends ChangeNotifier {

  final _regNameParent = TextEditingController(text: 'Мария');
  get regNameParent {
    return _regNameParent;}


  final _emailParent = TextEditingController(text: 'Vcebudet5.ok@mail.ru');
  get emailParent {return _emailParent; }


  /// метод авторизации
  void autNext(BuildContext context) async {
    final nameParent = _regNameParent.text;
    final emailParent = _emailParent.text;
    if (nameParent == 'Мария' && emailParent == 'vcebudet5.ok@mail.ru') { await
    Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreen);
    MaterialPageRoute<void>(builder: (context) => const MainScreen());
    } else {
      print('show error');
    }
  }

  /// метод, который ведет на регистрацию профиля родителя.
  void registration (BuildContext context){
    Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreen);

  }


}

class ScreenProfileParentModelProvider extends InheritedNotifier {
  final ScreenProfileParentModel model;

  const ScreenProfileParentModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static ScreenProfileParentModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScreenProfileParentModelProvider>();
  }

  static ScreenProfileParentModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ScreenProfileParentModelProvider>()
        ?.widget;
    return widget is ScreenProfileParentModelProvider ? widget : null;

  }
}