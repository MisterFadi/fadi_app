// ----- 3. neue Produkte durch das Scannen hinzufügen.

import 'dart:io';

void scanProduct() {
  bool kameraButtonAbbruch = false;
  bool kameraButtonErlauben = false;

  print("Darf BringMe auf deine Kamera zugreifen? (true/false)");
  kameraButtonErlauben = bool.parse(stdin.readLineSync()!);

  if (kameraButtonAbbruch == true) {
    print("Möchtest du abbrechen? (true/false)");
    bool bestaetigungAbbruch = bool.parse(stdin.readLineSync()!);

    if (bestaetigungAbbruch) {
      print("Abbruch bestätigt. Das Programm wird beendet.");
    } else {
      print("Hura, jetzt kannst du die Produkte scannen!");
    }
  } else if (kameraButtonErlauben == true) {
    print("Hura, jetzt kannst du Produkte scannen!");
  } else {
    print("Bitte wähle erneut!");
  }
}
