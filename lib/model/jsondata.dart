class Model {
  String? word;
  List<Meaning> meanings;
  String? origin;

  Model(this.word, this.meanings,this.origin);
}

class Meaning {
  String? partOfSpeech;
  List<Definition> definitions;

  Meaning(this.partOfSpeech, this.definitions);
}

class Definition {
  String definition;
  String example;
  late List<String> synonym;
  late List<String> antonym;

  Definition(this.definition, this.synonym, this.antonym, this.example);
}
