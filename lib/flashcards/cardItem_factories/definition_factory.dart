import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_definition.dart';

class DefinitionFactory extends ItemFactory {
  // Item Factory Constructor
  const DefinitionFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'definition') {
      return StudyDefinition(
          isOnFront: item.isOnFront, definition: item.content);
    } else {
      return null;
    }
  }
}
