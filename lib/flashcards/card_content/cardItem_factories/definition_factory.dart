import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_definition.dart';

///  Class: DefinitationFactory, convert realm definition string to StudyDefinition
class DefinitionFactory extends ItemFactory {
  /// Definition Factory Constructor
  const DefinitionFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyDefinition') {
      return StudyDefinition(
          isOnFront: item.isOnFront, definition: item.content);
    } else {
      return null;
    }
  }
}
