import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      // 1. Adição do FutureBuilder na raiz ou na chamada da tela
      home: FutureBuilder<Document>(
        future: Document.getDocument(),
        builder: (context, snapshot) {
          // Exibe um loading enquanto aguarda os dados
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } 
          // Trata possíveis erros
          else if (snapshot.hasError) {
            return Scaffold(
              body: Center(child: Text('Erro ao carregar dados: ${snapshot.error}')),
            );
          } 
          // Renderiza a tela original quando os dados chegam
          else if (snapshot.hasData) {
            return DocumentScreen(document: snapshot.data!);
          } 
          
          return const Scaffold(
            body: Center(child: Text('Nenhum dado encontrado')),
          );
        },
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var (title, :modified) = document.getMetadata();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',
            ),
          ),
        ],
      ),
    );
  }
}