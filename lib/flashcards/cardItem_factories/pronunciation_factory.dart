import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_pronunciation.dart';

class PronunciationFactory extends ItemFactory {
  // Item Factory Constructor
  const PronunciationFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyPronunciation') {
      return StudyPronunciation(
          isOnFront: item.isOnFront, pronunciation: item.content);
    } else {
      return null;
    }
  }
}
