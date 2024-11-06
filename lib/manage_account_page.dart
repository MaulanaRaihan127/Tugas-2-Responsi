import 'package:flutter/material.dart';

class ManageAccountPage extends StatelessWidget {
  const ManageAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  // Mengganti Icon dengan Image
                  Image.asset(
                    'assets/image2.jpeg', // Ganti path dengan path gambar Anda
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('Asal Universitas'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nomor Telepon',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Alamat',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle update profile action
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text('Ubah Profil', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
