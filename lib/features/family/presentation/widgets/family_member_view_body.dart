import 'package:flutter/material.dart';
import 'package:toku2_app/core/models/item_model.dart';
import 'package:toku2_app/core/widgets/list_item.dart';

class FamilyMembersViewBody extends StatelessWidget {
  const FamilyMembersViewBody({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'ojiisan',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'sobo',
      enName: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'nīsan',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'otōto',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume ',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'imouto',
      enName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        return ListItem(
          color: const Color(0xff558B37),
          item: numbers[index],
        );
      },
    );
  }
}
