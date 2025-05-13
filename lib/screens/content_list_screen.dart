import 'package:flutter/material.dart';

class ContentListScreen extends StatelessWidget {
  final List<Map<String, String>> _contents = [
    {'title': 'Leçon sur les fractions', 'author': 'Mme Dupont'},
    {'title': 'Introduction à la botanique', 'author': 'M. Martin'},
    {'title': 'Histoire de la Révolution', 'author': 'Mme Durand'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contenus de la Communauté')),
      body: ListView.builder(
        itemCount: _contents.length,
        itemBuilder: (context, index) {
          final item = _contents[index];
          return ListTile(
            title: Text(item['title']!),
            subtitle: Text('Créé par ${item['author']}'),
            onTap: () {
              // TODO: Open detail view
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Créer',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Communauté'),
        ],
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/create');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/list');
              break;
          }
        },
      ),
    );
  }
}
