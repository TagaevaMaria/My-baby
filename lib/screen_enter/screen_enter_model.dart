import 'package:flutter/material.dart';

import '../main_screen/main_screen.dart';
import '../ui/navigation/main_navigation.dart';
import 'package:firebase_core/firebase_core.dart';

class ScreenEnterModel extends ChangeNotifier {


  final _loginController = TextEditingController(text: 'Vcebudet5.ok@mail.ru');
  get loginController {
    return _loginController;}


  final _passwordController = TextEditingController(text: '27876091');
  get passwordController {return _passwordController; }



  /// метод авторизации
  void enter(BuildContext context) async {
    final loginController = _loginController.text;
    final passwordController = _passwordController.text;

    if (loginController == 'Vcebudet5.ok@mail.ru' && passwordController == '27876091' ) { await
    Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreenWidget);
    MaterialPageRoute<void>(builder: (context) => const MainScreen());
    } else {
      print('show error');
    }
  }
  }


class ScreenEnterModelProvider extends InheritedNotifier {
  final ScreenEnterModel model;

  const ScreenEnterModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static ScreenEnterModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScreenEnterModelProvider>();
  }

  static ScreenEnterModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ScreenEnterModelProvider>()
        ?.widget;
    return widget is ScreenEnterModelProvider ? widget : null;
  }
}
