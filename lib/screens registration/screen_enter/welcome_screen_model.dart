import 'package:flutter/material.dart';
import '../../ui/navigation/main_navigation.dart';



class WelcomeScreenModel extends ChangeNotifier {


  final _loginController = TextEditingController(text: 'Vcebudet5.ok@mail.ru');
  get loginController {
    return _loginController;}


  final _passwordController = TextEditingController(text: '27876091');
  get passwordController {return _passwordController; }



  /// метод авторизации
  void enter(BuildContext context) async {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreen);

  }



  void screenAddChild(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.addChild);
  }
  }


class WelcomeScreenModelProvider extends InheritedNotifier {
  final WelcomeScreenModel model;

  const WelcomeScreenModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static WelcomeScreenModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<WelcomeScreenModelProvider>();
  }

  static WelcomeScreenModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<WelcomeScreenModelProvider>()
        ?.widget;
    return widget is WelcomeScreenModelProvider ? widget : null;
  }
}
