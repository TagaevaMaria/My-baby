
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_baby/photo_by_mons/photo_by_mons_screen.dart';
import 'package:my_baby/screen_allergy/screen_allergy.dart';
import 'ScreenHeightWeight/indicator_calendar_weight.dart';
import 'authorization/authorization.dart';
import 'main_screen/main_screen_widget.dart';
import 'main_screen/screen_achievements.dart';
import 'main_screen/background_widget.dart';
import 'main_screen/screen_photo.dart';
import 'screen_doctors/screen_doctors.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'ScreenHeightWeight/screen_height_weight.dart';
import 'notes/notes_widget.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'notes/notes_widget_form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Authorization(),
        '/main_screen': (context) => const BackgroundWidget(
              child: MainScreenWidget(),
            ),
        '/screen_achievements': (context) => const ScreenAchievements(),
        '/screen_doctors': (context) => const BackgroundWidget(
              child: ScreenDoctors(),
            ),
        '/notes_widget': (context) =>
            const BackgroundWidget(child: NotesWidget()),
        '/notes_widget_form': (context) =>
            const BackgroundWidget(child: NotesWidgetForm()),
        '/screen_photo': (context) => const ScreenPhoto(),
        '/screen_allergy': (context) => const ScreenAllergy(),
        '/screen_height_weight': (context) => const ScreenHeightWeight(),
        '/indicator_calendar_weight': (context) =>
            const IndicatorCalendarWeight(),
        '/photoByMons': (context) => const PhotoByMons()
      },
      initialRoute: '/',
    );
  }
}