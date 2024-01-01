import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

List<MenuItems> appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'Animated container',
      subTitle: 'Stateful widgets animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItems(
      title: 'UI Controls + titles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
];
