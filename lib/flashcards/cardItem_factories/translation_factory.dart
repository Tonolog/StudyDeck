import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_translation.dart';

class TranslationFactory extends ItemFactory {
  // Item Factory Constructor
  const TranslationFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyTranslation') {
      return StudyTranslation(
          isOnFront: item.isOnFront, translation: item.content);
    } else {
      return null;
    }
  }
}
