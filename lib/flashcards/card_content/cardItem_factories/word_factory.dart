import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_word.dart';

///  Class: WordFactory, convert realm vocab word to StudyWord
class WordFactory extends ItemFactory {
  /// Word Factory Constructor
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
