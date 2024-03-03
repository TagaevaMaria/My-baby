import 'package:flutter/material.dart';
import 'package:my_baby/screen_enter/screen_enter_model.dart';
import 'package:my_baby/ui/background_widget.dart';
import 'package:my_baby/ui/theme/style_text_filed.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator_flutter/email_validator_flutter.dart';

class ScreenEnterBody extends StatefulWidget {
  const ScreenEnterBody({super.key});

  @override
  State<ScreenEnterBody> createState() => _ScreenEnterBodyState();
}

class _ScreenEnterBodyState extends State<ScreenEnterBody> {
  final _model = ScreenEnterModel();

  @override
  Widget build(BuildContext context) {
    return ScreenEnterModelProvider(
      model: _model,
      child: const ScreenEnter(),
    );
  }
}

class ScreenEnter extends StatelessWidget {
  const ScreenEnter({super.key});

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
              MyText(text: 'Почта/логин'),
               MyTextFild(
                controller: ScreenEnterModelProvider.read(context)
                     ?.model
                    .loginController),
              MyText(text: 'Пароль'),
              MyTextFild(controller: ScreenEnterModelProvider.read(context)?.model.passwordController),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.large(backgroundColor: Colors.white,
          onPressed: () =>
              ScreenEnterModelProvider.watch(context)?.model.enter(context),
          child: const Text('Вперед'),
        ),
      ),
    );
  }
}
