import 'package:flutter/material.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';
import '../main_screen/main_screen_widget.dart';

class AuthorizationModel extends ChangeNotifier {

  final _autNameController = TextEditingController(text: 'Ромаха');
  get autNameController {
   return _autNameController;}


  final _autDataController = TextEditingController(text: '29.12.2018');
  get autDataController {return _autDataController; }


  final _autPolController = TextEditingController(text: 'Мальчик');
  get autPolController {return _autPolController;}


  void autNext(BuildContext context) async {
    final name = _autNameController.text;
    final data = _autDataController.text;
    final pol = _autPolController.text;
    if (name == 'Ромаха' && data == '29.12.2018' && pol == 'Мальчик') { await
      Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreenWidget);
      MaterialPageRoute<void>(builder: (context) => const MainScreenWidget());
    } else {
      print('show error');
    }
  }



}

class AuthorizationModelProvider extends InheritedNotifier {
  final AuthorizationModel model;

  const AuthorizationModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static AuthorizationModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AuthorizationModelProvider>();
  }

  static AuthorizationModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<AuthorizationModelProvider>()
        ?.widget;
    return widget is AuthorizationModelProvider ? widget : null;

  }
}