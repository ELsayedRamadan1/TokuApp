import 'package:flutter/material.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  CategoryItem(
      {super.key, required this.text, required this.color, this.onTap});
  final String text;
  final Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: ColorsManager.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
