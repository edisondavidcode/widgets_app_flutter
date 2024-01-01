import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Pariatur duis adipisicing mollit qui nostrud eu anim pariatur voluptate amet mollit duis ut. Culpa in id aute reprehenderit aliqua esse nisi laborum officia id aliqua sunt. Ex eiusmod fugiat proident enim officia elit fugiat. Duis magna et sint cillum fugiat fugiat id irure.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Ullamco commodo est exercitation ullamco dolore eiusmod consectetur amet do non adipisicing aliquip minim. Est reprehenderit sunt irure est elit nisi tempor anim tempor exercitation. Aliqua esse nostrud exercitation enim mollit irure nulla. Fugiat occaecat adipisicing sint dolor mollit fugiat et exercitation duis commodo qui commodo amet quis. Aliquip tempor pariatur est veniam. Sunt fugiat consequat amet occaecat ipsum esse mollit. Voluptate irure labore occaecat officia velit sunt commodo deserunt nisi anim dolor duis fugiat.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta a comida',
      'Fugiat ut dolor cillum eiusmod fugiat. Do id dolor nostrud et cillum cillum laborum. Proident non tempor duis eu dolore consectetur consequat anim.',
      'assets/images/3.png'),
];

class AppTutorial extends StatelessWidget {
  static const name = 'app_tutorial';

  const AppTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slidedata) => _Slide(
                    title: slidedata.title,
                    caption: slidedata.caption,
                    imageUrl: slidedata.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Salir')))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20),
          Text(title, style: titleStyle),
          const SizedBox(height: 20),
          Text(caption, style: captionStyle),
        ],
      ),
    );
  }
}
