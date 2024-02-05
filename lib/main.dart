import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  static final mainNavigation =MainNavigation();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
    );
  }
}

