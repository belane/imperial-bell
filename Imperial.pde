#include "pitches.h"

// melody
int melody[] = {
  NOTE_A4, NOTE_A4, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4, NOTE_E5, NOTE_E5, NOTE_E5, NOTE_F5, NOTE_C4, NOTE_GS4, NOTE_F4, NOTE_C4, NOTE_A4,0};

// tempo
int noteDurations[] = {
  2, 2, 2, 3, 5, 2, 3, 5, 1, 2, 2, 2, 3, 5, 2, 3, 5, 1, 1 };

void setup() {
}

// play
void loop() {
  for (int thisNote = 0; thisNote < 19; thisNote++) {

    int noteDuration = 1000/noteDurations[thisNote];
    tone(1, melody[thisNote],noteDuration);
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    noTone(1);
  }
}
