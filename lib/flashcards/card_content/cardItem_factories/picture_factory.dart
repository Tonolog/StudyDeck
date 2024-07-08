import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_picture.dart';

class PictureFactory extends ItemFactory {
  // Item Factory Constructor
  const PictureFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyPicture') {
      return StudyPicture(isOnFront: item.isOnFront, imageLink: item.content);
    } else {
      return null;
    }
  }
}
