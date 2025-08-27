import 'package:flutter/material.dart';
import 'package:toku2_app/core/functions/build_app_bar.dart';
import 'package:toku2_app/features/Colors/presentation/widgets/colors_view_body.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Colors'),
      body: const ColorsViewBody(),
    );
  }
}
