import 'package:flutter/material.dart';

import '../ui/background_widget.dart';
import '../ui/theme/style_text_filed.dart';
import 'add_child_model.dart';

///класс, который хронит модель.
class AddChild extends StatefulWidget {
  const AddChild({super.key});

  @override
  State<AddChild> createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  final _model = AddChildModel();

  @override
  Widget build(BuildContext context) {
    return AddChildModelProvider(model: _model, child: const AddChildScreen());
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
            'Добавить ребёнка',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 25),
            MyText(text: 'Имя малыша'),
            MyTextFild(
                controller: AddChildModelProvider.read(context)
                    ?.model
                    .autNameController),
            MyText(text: 'Дата рождения'),
            MyTextFild(
                controller: AddChildModelProvider.read(context)
                    ?.model
                    .autDataController),
            MyText(text: 'Пол'),
            MyTextFild(
              controller:
                  AddChildModelProvider.read(context)?.model.autPolController,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.white,
        onPressed: () =>
            AddChildModelProvider.watch(context)?.model.autNext(context),
        child: const Icon(Icons.check),
      ),
    ));
  }
}
