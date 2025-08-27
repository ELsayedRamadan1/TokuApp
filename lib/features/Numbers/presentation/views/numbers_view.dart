import 'package:flutter/material.dart';
import 'package:toku2_app/features/Numbers/presentation/widgets/numbers_view_body.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NumberViewBody(),
    );
  }
}
