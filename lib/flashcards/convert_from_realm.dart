import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/flashcard.dart';
import 'package:study_deck/flashcards/cardItem_factories/item_factory.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:realm/realm.dart';

import 'package:study_deck/flashcards/cardItem_factories/audio_factory.dart';
import 'package:study_deck/flashcards/cardItem_factories/definition_factory.dart';
import 'package:study_deck/flashcards/cardItem_factories/picture_factory.dart';
import 'package:study_deck/flashcards/cardItem_factories/pronunciation_factory.dart';
import 'package:study_deck/flashcards/cardItem_factories/translation_factory.dart';
import 'package:study_deck/flashcards/cardItem_factories/word_factory.dart';

class ConvertFromRealm {
  // All Items Factory Constructor
  ConvertFromRealm() {
    addFactory();
  }

  List<ItemFactory> allFactories = [];

  // Function: Converts data from RealmDatabase StudyCards into Flutter Widgets
  List<Flashcard> realmListToFlashcards(RealmResults<StudyCard> theCards) {
    List<Flashcard> flashcards = [];
    List<StudyCard> allCards = theCards.toList();
    for (int i = 0; i < allCards.length; i++) {
      List<Widget> front = convertToWidgetList(allCards[i].frontContent);
      List<Widget> back = convertToWidgetList(allCards[i].frontContent);
      flashcards.add(Flashcard(frontContent: front, backContent: back));
    }

    return flashcards;
  }

  // Function: Converts RealmDatabase StudyCardItems into Flutter Widgets
  List<Widget> convertToWidgetList(RealmList<StudyCardItem> cardSide) {
    List<Widget> cardItems = [];
    for (int j = 0; j < cardSide.length; j++) {
      for (int i = 0; i < allFactories.length; i++) {
        Widget item = allFactories[i].convertToWidget(cardSide[j]);
        if (item is! EmptyWidget) {
          cardItems.add(item);
        }
      }
    }
    return cardItems;
  }

  void addFactory() {
    allFactories.add(const AudioFactory());
    allFactories.add(const DefinitionFactory());
    allFactories.add(const PictureFactory());
    allFactories.add(const PronunciationFactory());
    allFactories.add(const TranslationFactory());
    allFactories.add(const WordFactory());
  }
}
