import 'package:flutter/material.dart';

class ProductAddPage extends StatefulWidget {
  @override
  _ProductAddPageState createState() => _ProductAddPageState();
}

class _ProductAddPageState extends State<ProductAddPage> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();

  DateTime? selectedDate;

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        // Tarihi YYYY-MM-DD formatında ayarlıyoruz
        expiryDateController.text = '${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Ürün Ekle'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: productNameController,
              decoration: InputDecoration(labelText: 'Ürün Adı'),
            ),
            TextField(
              controller: expiryDateController,
              decoration: InputDecoration(
                labelText: 'Son Kullanma Tarihi (YYYY-MM-DD)',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ),
              readOnly: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.pop(context); // Ürün eklendikten sonra ana sayfaya dön
              },
              child: Text('Ürünü Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}
