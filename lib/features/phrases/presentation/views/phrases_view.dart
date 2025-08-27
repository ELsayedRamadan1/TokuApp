import 'package:flutter/material.dart';
import 'package:toku2_app/core/functions/build_app_bar.dart';
import 'package:toku2_app/features/phrases/presentation/widgets/phrases_view_body.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Phrases'),
      body: const PhrasesViewBody(),
    );
  }
}
