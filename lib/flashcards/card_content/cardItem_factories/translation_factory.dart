import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_translation.dart';

///  Class: Translation Factory, convert realm L1 translation string to StudyTranslation
class TranslationFactory extends ItemFactory {
  /// Translation Factory Constructor
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
