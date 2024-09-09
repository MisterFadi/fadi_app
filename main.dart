import "dart:io";

import '1_erstRegistration.dart';
import '2_anmledungBenutzers.dart';
import '3_produkteScannen.dart';
import '4_listeErstellen.dart';

void main() {
  print("Bitte wähle eine dieser Optionen aus...");
  print("1. Erste-Registration");
  print("2. Anmelden");
  print("3. Produkte scannen");
  print("4. Liste mit Personen erstellen");

  String selectOption = stdin.readLineSync()!;
  switch (selectOption) {
// ----- 1. Erst-Registrierung eines Benutzers
    case "1" || "Erste-Registration":
      firstRegistration();

// ----- 2. Anmelden eines Benutzers
    case "2" || "Anmelden":
      loginUser();

    // ----- 3. neue Produkte durch das Scannen hinzufügen.
    case "3" || "Produkte scannen":
      scanProduct();

    // ----- 4. Liste mit Personen erstellen
    case "4" ||
          "Liste mit Personen erstellen" ||
          "Liste erstellen" ||
          "Personen hinzufügen":
      listWithPeople();
  }
}
