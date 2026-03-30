import 'dart:convert';

class Document {
  final Map<String, Object?> _json;

  // 1. Construtor privado para impedir a criação síncrona direta
  Document._(this._json);

  // 2. Método estático assíncrono para simular o fetch de uma API externa
  static Future<Document> getDocument() async {
    await Future.delayed(const Duration(seconds: 1)); // Simula o atraso da rede
    return Document._(jsonDecode(documentJson));
  }

  (String, {DateTime modified}) getMetadata() {
    if (_json
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified,
          }
        }) {
      return (title, modified: DateTime.parse(localModified));
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  // 3. Transformando a string JSON em estática para ser acessada pelo método estático
  static const documentJson = '''
    {
      "metadata": {
        "title": "My Document",
        "modified": "2023-05-10"
      },
      "blocks": [
        {
          "type": "h1",
          "text": "Chapter 1"
        },
        {
          "type": "p",
          "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        },
        {
          "type": "checkbox",
          "checked": false,
          "text": "Learn Dart 3"
        }
      ]
    }
    ''';
}