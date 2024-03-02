import 'package:flutter/material.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';
import '../main_screen/main_screen.dart';



class AddChildModel extends ChangeNotifier {

  final _autNameController = TextEditingController(text: 'Ромаха');
  get autNameController {
   return _autNameController;}


  final _autDataController = TextEditingController(text: '29.12.2018');
  get autDataController {return _autDataController; }


  final _autPolController = TextEditingController(text: 'Мальчик');
  get autPolController {return _autPolController;}

/// метод авторизации
  void autNext(BuildContext context) async {
    final name = _autNameController.text;
    final data = _autDataController.text;
    final pol = _autPolController.text;
    if (name == 'Ромаха' && data == '29.12.2018' && pol == 'Мальчик') { await
      Navigator.of(context).pushNamed(MainNavigationRouteNames.mainScreenWidget);
      MaterialPageRoute<void>(builder: (context) => const MainScreen());
    } else {
      print('show error');
    }
  }



}

class AddChildModelProvider extends InheritedNotifier {
  final AddChildModel model;

  const AddChildModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static AddChildModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AddChildModelProvider>();
  }

  static AddChildModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<AddChildModelProvider>()
        ?.widget;
    return widget is AddChildModelProvider ? widget : null;

  }
}