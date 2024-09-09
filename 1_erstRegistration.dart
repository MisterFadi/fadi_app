// ----- 1. Erst-Registrierung eines Benutzers
import 'dart:io';

void firstRegistration() {
  // Variablen zum Speichern der Benutzerdaten
  String? username;
  String? password;

  // Benutzereingabe für Benutzernamen
  stdout.write("Bitte wählen Sie einen Benutzernamen: ");
  username = stdin.readLineSync();

  // Passwort-Eingabe
  stdout.write("Bitte wählen Sie ein Passwort: ");
  password = stdin.readLineSync();

  // Überprüfung der Eingaben
  if (username != null &&
      password != null &&
      username.isNotEmpty &&
      password.isNotEmpty) {
  } else
    print("Registrierung fehlgeschlagen. Bitte geben Sie gültige Daten ein.");
}
