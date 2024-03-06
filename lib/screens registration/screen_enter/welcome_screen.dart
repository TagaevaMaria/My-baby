import 'package:flutter/material.dart';
import 'package:my_baby/screens%20registration/screen_enter/welcome_screen_model.dart';

import 'package:my_baby/ui/background_widget.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _model = WelcomeScreenModel();

  @override
  Widget build(BuildContext context) {
    return WelcomeScreenModelProvider(
      model: _model,
      child: const WelcomeScreenBody(),
    );
  }
}

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

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
              'Добро пожаловать!',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Card(
                child: TextButton(
                  onPressed: () =>WelcomeScreenModelProvider.read(context)?.model.screenAddChild(context),
                  child: const Text('Создать профиль ребёнка', style: TextStyle(fontSize: 25),),
                ),
              ),
              Card(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Уже создала малыша',style: TextStyle(fontSize: 25),),
                ),
              ),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton.large(
          backgroundColor: Colors.white,
          onPressed: () =>
              Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen),
          child: const Text('Вперед'),
        ),
      ),
    );
  }
}
