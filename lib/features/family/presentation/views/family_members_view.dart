import 'package:flutter/material.dart';
import 'package:toku2_app/core/functions/build_app_bar.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/features/family/presentation/widgets/family_member_view_body.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Family Members'),
      backgroundColor: ColorsManager.kGreenColor,
      body: const FamilyMembersViewBody(),
    );
  }
}
