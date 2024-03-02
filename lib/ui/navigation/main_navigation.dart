import 'package:flutter/material.dart';
import 'package:my_baby/add_child/add_child.dart';
import 'package:my_baby/main_screen/notes/notes_widget.dart';
import 'package:my_baby/screen_enter/screen_enter.dart';
import '../../main_screen/notes/notes_widget_form.dart';
import '../../main_screen/screenHeightWeight/indicator_calendar_weight.dart';
import '../../main_screen/screenHeightWeight/screen_height_weight.dart';
import '../../main_screen/screen_allergy/screen_allergy.dart';
import '../../main_screen/screen_doctors/screen_doctors.dart';
import '../background_widget.dart';
import '../../main_screen/main_screen.dart';
import '../../main_screen/screen_achievements.dart';
import '../../main_screen/screen_photo/screen_photo.dart';




class MainNavigationRouteNames {
  static const screenEnter = '/';
  static const authorization = 'authorization';
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
  static const addChild = '/addChild';

}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.screenEnter;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.screenEnter: (context) => const ScreenEnterBody(),
    MainNavigationRouteNames.mainScreenWidget: (context) =>
        const BackgroundWidget(
          child: MainScreen(),
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
    MainNavigationRouteNames.screenPhoto: (context) => const ScreenPhotoBody(),
    MainNavigationRouteNames.screenAllergy: (context) => const ScreenAllergy(),
    MainNavigationRouteNames.screenHeightWeight: (context) =>
        const ScreenHeightWeight(),
    MainNavigationRouteNames.indicatorCalendarWeight: (context) =>
        const IndicatorCalendarWeight(),
    MainNavigationRouteNames.photoByMons: (context) => const ScreenPhotoBody(),
    MainNavigationRouteNames.addChild: (context) => const AddChild(),
  };
}
