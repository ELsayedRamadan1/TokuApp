import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
              color: ColorsManager.kPrimaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorsManager.kBrownColor,
      ),
      backgroundColor: ColorsManager.kPrimaryColor,
      body: const HomeViewBody(),
    );
  }
}
