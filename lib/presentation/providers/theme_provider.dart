import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_flutter/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
