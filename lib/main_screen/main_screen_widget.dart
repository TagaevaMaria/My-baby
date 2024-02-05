import 'package:flutter/material.dart';
import 'package:my_baby/ui/navigation/main_navigation.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  /// функции для навигаций
  void _screenAchievements(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.screenAchievements);
  }

  void _screenDoctors(BuildContext context) {
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.screenDoctors,
    );
  }

  void _screenPhoto(BuildContext context) {
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.screenPhoto,
    );
  }

  void _screenAllergy(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.screenAllergy);
  }

  void _screenHeightWeight(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.screenHeightWeight);
  }

  void _screenNotes(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.notesWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _rowWidgets(
              title: 'Достижения',
              titleTwo: 'Запись к врачам',
              titleThree: 'Заметки',
              image: 'image/achievements.png',
              imageTwo: 'image/doctors.png',
              imageThree: 'image/notes.png',
              size: 80.0,
              padding: const EdgeInsets.only(
                  top: 50, bottom: 20, left: 10, right: 10),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              onPressed: () => _screenAchievements(context),
              onPressedTwo: () => _screenDoctors(context),
              onPressedThree: () => _screenNotes(context),
            ),
            _rowWidgets(
              title: 'Фотографии',
              titleTwo: 'Аллергии',
              titleThree: 'Рост и вес',
              image: 'image/foto.png',
              imageTwo: 'image/allergy.png',
              imageThree: 'image/height_weight.png',
              size: 80.0,
              padding: const EdgeInsets.only(
                  top: 50, bottom: 20, left: 10, right: 10),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              onPressed: () => _screenPhoto(context),
              onPressedTwo: () => _screenAllergy(context),
              onPressedThree: () => _screenHeightWeight(context),
            ),
            _rowWidgets(
              title: 'Прививки',
              titleTwo: 'Cон',
              titleThree: 'Прикорм',
              image: 'image/vaccinations.png',
              imageTwo: 'image/night.png',
              imageThree: 'image/eat.png',
              size: 80.0,
              padding: const EdgeInsets.only(
                  top: 50, bottom: 20, left: 10, right: 10),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              onPressed: () {},
              onPressedTwo: () {},
              onPressedThree: () {},
            ),
          ],
        ),
      ),
    );
  }
}

/// Ряд виджетов.
Widget _rowWidgets(
    {required String title,
    required String titleTwo,
    required String titleThree,
    required String image,
    required String imageTwo,
    required String imageThree,
    required double size,
    required EdgeInsets padding,
    required MainAxisAlignment mainAxisAlignment,
    required CrossAxisAlignment crossAxisAlignment,
    required Function() onPressed,
    required Function() onPressedTwo,
    required Function() onPressedThree}) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    children: [
      _circleButtonWidget(
        title: title,
        image: image,
        size: size,
        padding: padding,
        onPressed: onPressed,
      ),
      _circleButtonWidget(
        title: titleTwo,
        image: imageTwo,
        size: size,
        padding: padding,
        onPressed: onPressedTwo,
      ),
      _circleButtonWidget(
        title: titleThree,
        image: imageThree,
        size: size,
        padding: padding,
        onPressed: onPressedThree,
      ),
    ],
  );
}

/// Виджет кнопки выбора действия.
Widget _circleButtonWidget({
  required String title,
  required String image,
  required double size,
  required EdgeInsets padding,
  required Function() onPressed,
}) {
  return Column(
    children: [
      TextButton(
        onPressed: onPressed,
        child: Image(
          image: AssetImage(image),
          width: size,
          height: size,
        ),
      ),
      Padding(
        padding: padding,
        child: Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}
