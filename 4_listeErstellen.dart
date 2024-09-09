// ----- 4. Liste mit Personen erstellen  // Erstelle eine neue Gruppe

import 'dart:io';

void listWithPeople() {
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
