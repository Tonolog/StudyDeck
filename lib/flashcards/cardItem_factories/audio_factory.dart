import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_audio.dart';

class AudioFactory extends ItemFactory {
  // Item Factory Constructor
  const AudioFactory();

  @override
  Widget convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'audio') {
      return StudyAudio(isOnFront: item.isOnFront, audioLink: item.content);
    } else {
      return EmptyWidget();
    }
  }
}