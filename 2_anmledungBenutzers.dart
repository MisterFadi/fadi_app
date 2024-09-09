// ----- 2. Anmelden eines Benutzers

import 'dart:io';

void loginUser() {
  // Festgelegte Anmeldedaten
  var username;
  String correctUsername = "$username";
  var password;
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
