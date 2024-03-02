import 'package:flutter/material.dart';
import 'package:my_baby/authorization/authorization_model.dart';
import '../main_screen/background_widget.dart';
import '../ui/theme/style_text_filed.dart';

///класс, который хронит модель.
class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  final _model = AuthorizationModel();

  @override
  Widget build(BuildContext context) {
    return AuthorizationModelProvider(
        model: _model, child: const AuthorizationScreen());
  }
}

/// вертска экрана.
class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

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
            'Регистрация',
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
                controller: AuthorizationModelProvider.read(context)
                    ?.model
                    .autNameController),
            MyText(text: 'Дата рождения'),
            MyTextFild(
                controller: AuthorizationModelProvider.read(context)
                    ?.model
                    .autDataController),
            MyText(text: 'Мальчик/девочка'),
            MyTextFild(
              controller: AuthorizationModelProvider.read(context)
                  ?.model
                  .autPolController,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(backgroundColor: Colors.white,
        onPressed: () =>
            AuthorizationModelProvider.watch(context)?.model.autNext(context),
        child: const Text('Вперед'),
      ),
    ));
  }
}
