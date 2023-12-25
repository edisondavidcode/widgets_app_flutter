import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elavation 0'},
  {'elevation': 1.0, 'label': 'Elavation 1'},
  {'elevation': 2.0, 'label': 'Elavation 2'},
  {'elevation': 3.0, 'label': 'Elavation 3'},
  {'elevation': 4.0, 'label': 'Elavation 4'},
  {'elevation': 5.0, 'label': 'Elavation 5'},
];

class CardScreen extends StatelessWidget {
  static const String name = 'cards_creen';

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) =>
              _CardType1(label: card['label'], elevation: card['elevation'])),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
              alignment: Alignment.topLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
