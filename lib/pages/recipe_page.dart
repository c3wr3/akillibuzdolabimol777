import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarif Önerileri'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Son Kullanma Tarihi Yaklaşan Ürünler için Tarifler:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // 3 örnek tarif öneriyoruz
                itemBuilder: (context, index) {
                  String title;
                  String ingredients;

                  switch (index) {
                    case 0:
                      title = 'Sebzeli Omlet';
                      ingredients = 'Malzemeler: 2 adet yumurta, 1 adet biber, 1 adet domates, tuz, karabiber';
                      break;
                    case 1:
                      title = 'Makarna Salatası';
                      ingredients = 'Malzemeler: 200 gr makarna, 1 adet salatalık, 1 paket domates, zeytinyağı, tuz';
                      break;
                    case 2:
                      title = 'Sebze Çorbası';
                      ingredients = 'Malzemeler: 1 adet havuç, 1 adet patates, 1 adet soğan, 2 su bardağı su, tuz, baharatlar';
                      break;
                    default:
                      title = 'Tarif ${index + 1}';
                      ingredients = 'Malzemeler: ...';
                  }

                  return ListTile(
                    title: Text(title),
                    subtitle: Text(ingredients),
                    trailing: Icon(Icons.restaurant_menu),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
