import 'dart:io';

void main() {
  {
    print("Herzlich Willkommen auf BringMe:)");

    // ----- 1. Erst-Registrierung eines Benutzers

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

    // ----- 2. Anmelden eines Benutzers

    // Festgelegte Anmeldedaten
    String correctUsername = "$username";
    String correctPassword = "$password";

    // Benutzereingabe für Benutzernamen
    stdout.write("Benutzername: ");
    String? usernameok = stdin.readLineSync();

    // Benutzereingabe für Passwort
    stdout.write("Passwort: ");
    String? passwordaha = stdin.readLineSync();

    // Überprüfung der Anmeldedaten
    if (usernameok == correctUsername && passwordaha == correctPassword) {
      print("Anmeldung erfolgreich! Willkommen, $usernameok.");
    } else {
      print(
          "Anmeldung fehlgeschlagen. Überprüfen Sie Ihren Benutzernamen und Ihr Passwort.");
    }
  }

  // ----- 3. eue Produkte durch das Scannen hinzufügen.

  {
    bool kameraButtonAbbruch = false;
    bool kameraButtonErlauben = false;

    print("Möchtest du abbrechen? (true/false)");
    kameraButtonAbbruch = bool.parse(stdin.readLineSync()!);

    // print("Möchtest du erlauben? (true/false)");
    // kameraButtonErlauben = bool.parse(stdin.readLineSync()!);

    if (kameraButtonAbbruch == true) {
      print("Möchtest du wirklich abbrechen? (true/false)");
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
}
