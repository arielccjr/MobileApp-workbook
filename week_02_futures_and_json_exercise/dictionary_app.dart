import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

// Optional: Class to represent the returned word data
class WordDefinition {
  final String word;
  final List<Meaning> meanings;

  WordDefinition({required this.word, required this.meanings});

  factory WordDefinition.fromJson(List<dynamic> json) {
    if (json.isEmpty) {
      return WordDefinition(word: '', meanings: []);
    }
    final firstResult = json[0];
    final word = firstResult['word'] as String? ?? '';
    final meaningsJson = firstResult['meanings'] as List<dynamic>? ?? [];
    final meanings = meaningsJson.map((m) => Meaning.fromJson(m)).toList();
    return WordDefinition(word: word, meanings: meanings);
  }
}

class Meaning {
  final String partOfSpeech;
  final List<Definition> definitions;

  Meaning({required this.partOfSpeech, required this.definitions});

  factory Meaning.fromJson(Map<String, dynamic> json) {
    final partOfSpeech = json['partOfSpeech'] as String? ?? '';
    final definitionsJson = json['definitions'] as List<dynamic>? ?? [];
    final definitions = definitionsJson.map((d) => Definition.fromJson(d)).toList();
    return Meaning(partOfSpeech: partOfSpeech, definitions: definitions);
  }
}

class Definition {
  final String definition;

  Definition({required this.definition});

  factory Definition.fromJson(Map<String, dynamic> json) {
    final definition = json['definition'] as String? ?? '';
    return Definition(definition: definition);
  }
}

Future<WordDefinition?> fetchDefinition(String word) async {
  final url = Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return WordDefinition.fromJson(jsonResponse);
    } else if (response.statusCode == 404) {
      print('Word not found.');
      return null;
    } else {
      print('Failed to fetch definition. Status code: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('An error occurred: $e');
    return null;
  }
}

void displayDefinition(WordDefinition? definition) {
  if (definition != null && definition.meanings.isNotEmpty && definition.meanings[0].definitions.isNotEmpty) {
    print('\nWord Definition');
    print('--------------------------------------------------');
    print('Word: ${definition.word}');
    print('Definition: ${definition.meanings[0].definitions[0].definition}');
    print('--------------------------------------------------');
  }
}

void main() async {
  String? searchWord;

  do {
    stdout.write('Enter a word to search (or type "quit" to exit): ');
    searchWord = stdin.readLineSync();

    if (searchWord?.toLowerCase() == 'quit') {
      print('Exiting application.');
      break;
    }

    if (searchWord != null && searchWord.isNotEmpty) {
      final definition = await fetchDefinition(searchWord);
      displayDefinition(definition);
    } else if (searchWord != null && searchWord.isEmpty) {
      print('Please enter a word to search.');
    }
  } while (true);
}