import 'package:flutter/material.dart';

import '../features/home/presentation/views/home_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    home: HomeView(),
    debugShowCheckedModeBanner: false,
  );
}
}