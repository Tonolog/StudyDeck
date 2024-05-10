import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:study_deck/flashcards/card_content/card_content.dart';

// Class: Flashcard, CardContent info and flipping animation management
class Flashcard extends StatefulWidget {
  const Flashcard({
    super.key,
    required this.cardContent,
  });

  final CardContent cardContent;

  @override
  State<Flashcard> createState() => _Flashcard();
}

// Class: _Flashcard, state management and UI for Flashcard
class _Flashcard extends State<Flashcard> {
  @override
  Widget build(BuildContext context) {
    if (!widget.cardContent.reverse) {
      // Basic Format, definitions/associations on the front, vocab on back
      return FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.VERTICAL,
          side: CardSide.FRONT,
          front: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.cardContent.frontContent,
            ),
          ),
          back: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.cardContent.backContent,
            ),
          ));
    } else {
      // Flipped Format, definitions/associations on back, vobac on front
      return FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.VERTICAL,
          side: CardSide.FRONT,
          front: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.cardContent.backContent,
            ),
          ),
          back: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.cardContent.frontContent,
            ),
          ));
    }
  }

  // Brief: define visual appearance of flashcard
  BoxDecoration decorate() {
    return const BoxDecoration(
        color: Color.fromARGB(255, 161, 161, 255),
        // Create rounded corners
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ));
  }

  // Brief: define size of flashcard
  BoxConstraints setSize() {
    return const BoxConstraints(
      minWidth: 300,
      minHeight: 150,
      maxWidth: 900,
      maxHeight: 450,
    );
  }
}
