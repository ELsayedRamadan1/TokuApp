import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    leading: IconButton(
      color: ColorsManager.kPrimaryColor,
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back),
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: ColorsManager.kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: ColorsManager.kBrownColor,
  );
}
