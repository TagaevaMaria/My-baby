import 'package:flutter/cupertino.dart';
import '../../ScreenHeightWeight/indicator_calendar_weight.dart';
import '../../ScreenHeightWeight/screen_height_weight.dart';
import '../../authorization/authorization.dart';
import '../../main_screen/background_widget.dart';
import '../../main_screen/main_screen_widget.dart';
import '../../main_screen/screen_achievements.dart';
import '../../main_screen/screen_photo.dart';
import '../../notes/notes_widget.dart';
import '../../notes/notes_widget_form.dart';
import '../../photo_by_mons/photo_by_mons_screen.dart';
import '../../screen_allergy/screen_allergy.dart';
import '../../screen_doctors/screen_doctors.dart';

class MainNavigationRouteNames {
  static const authorization = '/';
  static const mainScreenWidget = '/main_screen';
  static const screenAchievements = '/screen_achievements';
  static const screenDoctors = '/screen_doctors';
  static const notesWidget = '/notes_widget';
  static const notesWidgetForm = '/notes_widget_form';
  static const screenPhoto = '/screen_photo';
  static const screenAllergy = '/screen_allergy';
  static const screenHeightWeight = '/screen_height_weight';
  static const indicatorCalendarWeight = '/indicator_calendar_weight';
  static const photoByMons = '/photoByMons';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.authorization;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.authorization: (context) => const Authorization(),
    MainNavigationRouteNames.mainScreenWidget: (context) =>
        const BackgroundWidget(
          child: MainScreenWidget(),
        ),
    MainNavigationRouteNames.screenAchievements: (context) =>
        const ScreenAchievements(),
    MainNavigationRouteNames.screenDoctors: (context) => const BackgroundWidget(
          child: ScreenDoctors(),
        ),
    MainNavigationRouteNames.notesWidget: (context) =>
        const BackgroundWidget(child: NotesWidget()),
    MainNavigationRouteNames.notesWidgetForm: (context) =>
        const BackgroundWidget(child: NotesWidgetForm()),
    MainNavigationRouteNames.screenPhoto: (context) => const ScreenPhoto(),
    MainNavigationRouteNames.screenAllergy: (context) => const ScreenAllergy(),
    MainNavigationRouteNames.screenHeightWeight: (context) =>
        const ScreenHeightWeight(),
    MainNavigationRouteNames.indicatorCalendarWeight: (context) =>
        const IndicatorCalendarWeight(),
    MainNavigationRouteNames.photoByMons: (context) => PhotoByMons()
  };
}
