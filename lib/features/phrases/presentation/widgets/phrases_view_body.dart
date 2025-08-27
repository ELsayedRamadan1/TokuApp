import 'package:flutter/material.dart';
import 'package:toku2_app/core/models/item_model.dart';
import 'package:toku2_app/core/utils/colors_manager.dart';
import 'package:toku2_app/features/phrases/presentation/widgets/phrasee_item.dart';

class PhrasesViewBody extends StatelessWidget {
  const PhrasesViewBody({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: "Don't forget to subscribe",
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'Programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'namae wa nandesuka?',
      enName: 'What is your name',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: "Yes, I'm coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phrasesList.length,
      itemBuilder: (context, index) {
        return PhrasesItem(
          color: ColorsManager.kSkyColor,
          item: phrasesList[index],
        );
      },
    );
  }
}
