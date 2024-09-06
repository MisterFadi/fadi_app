import "dart:io";

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

// ----- 3. neue Produkte durch das Scannen hinzufügen.

  {
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

// ----- 4. Liste mit Personen erstellen

  // Erstelle eine neue Gruppe
  var meineGruppe = Gruppe.Group("Party-Liste");
  print("");

  // Füge Personen zur Liste hinzu
  meineGruppe.personHinzufuegen(People("Kai"));
  meineGruppe.personHinzufuegen(People("Sobhi"));
  meineGruppe.personHinzufuegen(People("Lukas"));
  meineGruppe.personHinzufuegen(People("Mike"));

  // Abfrage ob ich die Personen in der Liste sehen möchte
  print("Möchten Sie alle Leute in dieser Liste sehen? (ja/nein)");
  String? antwort = stdin.readLineSync();

  if (antwort != null && antwort.toLowerCase() == "ja") {
    print("Diese Mitglieder sind in dieser Liste:");
    for (People mitglied in meineGruppe.personen) {
      print(mitglied.name);
    }
  } else {
    print("Ok, dann siehst du eben nicht wer in Liste ist...");
  }
}

class People {
  String name;
  People(this.name);
}

class Gruppe {
  String gruppenName;
  List<People> personen;

  Gruppe.Group(this.gruppenName) : personen = [];

  void personHinzufuegen(People person) {
    personen.add(person);
    print("${person.name} wurde zur Gruppe $gruppenName hinzugefügt.");
  }

  void anzeigenMitglieder() {
    print("Diese Mitglieder befindet sich derzeit in der Gruppe:");
    for (var person in personen) {
      print(person.name);
    }
  }
}
