import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_audio.dart';

///  Class: AudioFactory, convert realm audio link to StudyAudio
class AudioFactory extends ItemFactory {
  /// Audio Factory Constructor
  const AudioFactory();

  @override
  Widget? convertToWidget(StudyCardItem item) {
    if (item.widgetName == 'StudyAudio') {
      return StudyAudio(isOnFront: item.isOnFront, audioLink: item.content);
    } else {
      return null;
    }
  }
}
