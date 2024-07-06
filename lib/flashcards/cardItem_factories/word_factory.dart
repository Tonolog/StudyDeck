import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_word.dart';

class WordFactory extends ItemFactory {
  // Item Factory Constructor
  const WordFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyWord') {
      return StudyWord(isOnFront: item.isOnFront, vocabWord: item.content);
    } else {
      return null;
    }
  }
}
