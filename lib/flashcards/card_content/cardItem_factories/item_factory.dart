import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';

class ItemFactory {
  // Item Factory Constructor
  const ItemFactory();

  Widget? convertToWidget(StudyCardItem item) {
    if (item.content == '') {
      return const Text('');
    } else {
      return null;
    }
  }
}
