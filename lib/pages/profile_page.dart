import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı Profili'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kullanıcı Adı:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Kullanıcı adınızı girin',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'E-posta:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'E-posta adresinizi girin',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Şifre:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Şifrenizi girin',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kullanıcı profili güncelleme işlemi burada yapılacak
              },
              child: Text('Profili Güncelle'),
            ),
          ],
        ),
      ),
    );
  }
}
