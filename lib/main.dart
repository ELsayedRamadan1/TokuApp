import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/app_router.dart';

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  runApp(const TokuApp());
}
