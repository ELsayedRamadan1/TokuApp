import 'package:flutter/material.dart';
import 'package:toku2_app/core/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, // Specific height for each item
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize:
                    MainAxisSize.min, // prevent the extra vertical expansion
                children: [
                  Text(
                    item.jpName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold, // make japanese text bold
                    ),
                    softWrap: true, // allow text to wrap to next line
                  ),
                  Text(
                    item.enName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
