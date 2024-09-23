import 'package:flutter/material.dart';
import 'product_add_page.dart'; // Yeni ürün ekleme sayfası
import 'recipe_page.dart'; // Tarif önerileri sayfası
import 'profile_page.dart'; // Kullanıcı profili sayfası

class HomePage extends StatelessWidget {
  final List<String> productNames = [
    'Süt',
    'Yumurta',
    'Peynir',
    'Domates',
    'Salatalık',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buzdolabı Ürünleri'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productNames.length,
              itemBuilder: (context, index) {
                final expiryDate = DateTime.now().add(Duration(days: index * 3));
                return ListTile(
                  title: Text(productNames[index]),
                  subtitle: Text('Son Kullanma Tarihi: ${expiryDate.toLocal().toString().split(' ')[0]}'),
                  trailing: Icon(Icons.food_bank),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductAddPage()),
                    );
                  },
                  child: Text('Yeni Ürün Ekle'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecipePage()),
                    );
                  },
                  child: Text('Tarif Önerileri'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Text('Profil'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
