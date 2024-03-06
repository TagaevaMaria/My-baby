import 'package:flutter/material.dart';
import 'package:my_baby/screens%20registration/profile_parent/screen_profile_parent_model.dart';


import '../../ui/background_widget.dart';
import '../../ui/theme/style_text_filed.dart';
import '../../widget/widget_сheckbox.dart';


///класс, который хронит модель.
class ScreenProfileParent extends StatefulWidget {
  const ScreenProfileParent({super.key});

  @override
  State<ScreenProfileParent> createState() => _ScreenProfileParentState();
}

class _ScreenProfileParentState extends State<ScreenProfileParent> {
  final _model = ScreenProfileParentModel();

  @override
  Widget build(BuildContext context) {
    return ScreenProfileParentModelProvider(model: _model, child: const AddChildScreen());
  }
}

/// вертска экрана.
class AddChildScreen extends StatelessWidget {
  const AddChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          title: const Center(
            child: Text(
              'Профиль родителя',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 25),
              MyText(text: 'Имя родителя'),
              MyTextFild(
                  controller: ScreenProfileParentModelProvider.read(context)
                      ?.model.regNameParent),
              MyText(text: 'E-mail'),
              MyTextFild(
                  controller: ScreenProfileParentModelProvider.read(context)
                      ?.model.emailParent),
               CheckboxExample(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.white,
          onPressed: ()=> ScreenProfileParentModelProvider.read(context)?.model.registration(context),
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
