import 'package:flutter/material.dart';

class PhotoByMons extends StatefulWidget {
  const PhotoByMons({Key? key}) : super(key: key);

  @override
  State<PhotoByMons> createState() => _PhotoByMonsState();
}

class _PhotoByMonsState extends State<PhotoByMons> {
  final Map<int, List<String>> _photos = {
    1: [
      'https://yandex.ru/images/search?from=tabbar&text=%D1%8F%D0%BD%D0%B2%D0%B0%D1%80%D1%8C&pos=3&img_url=https%3A%2F%2Favatars.mds.yandex.net%2Fget-zen_doc%2F4457971%2Fpub_61e60307b7f95e325d7e6a27_61e603b6e7cefe2bd711ff38%2Fscale_1200&rpt=simage&lr=237',
      'https://astro-magiya.ru/wp-content/uploads/2019/10/yanvar-2020-luna-1-960x678.jpg',
    ],
    2: [
      'https://adonius.club/uploads/posts/2022-02/1644405211_1-adonius-club-p-fon-rabochego-stola-fevral-1.jpg',
      'https://pibig.info/uploads/posts/2021-12/1639010048_68-pibig-info-p-fevral-sneg-priroda-krasivo-foto-69.jpg',
      'https://pibig.info/uploads/posts/2021-12/1639010048_68-pibig-info-p-fevral-sneg-priroda-krasivo-foto-69.jpg',
      'https://pibig.info/uploads/posts/2021-12/1639010048_68-pibig-info-p-fevral-sneg-priroda-krasivo-foto-69.jpg',
    ],
    3: [
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
      'https://pbs.twimg.com/media/DZwS2SlWkAEqa54.jpg:large',
    ],
    4: [
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
      'https://azned.net/wp-content/uploads/2022/03/2022-03-01-11-59-47.jpg',
    ],
    5: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    6: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    7: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    8: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    9: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    10: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    11: [
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
      'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg',
    ],
    12: [],
  };

  int month = 1;

  @override
  Widget build(BuildContext context) {
    final _args = ModalRoute.of(context)?.settings.arguments;

    if (_args != null && _args is int) month = _args;

    return Scaffold(
      body: _photos[month]!.isNotEmpty
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              itemCount: _photos[month]?.length,
              itemBuilder: (context, index) {
                final _photo = _photos[month]?[index] ??
                    'https://i.ytimg.com/vi/VGZ50zDa-QI/maxresdefault.jpg';

                return TextButton(
                  onPressed: () {},
                  child: Image.network(
                    _photo,
                    width: 150,
                    height: 150,
                  ),
                );
              },
            )
          : const Center(
              child: Text('За выбранный месяц нет фоторграий'),
            ),
    );
  }
}
