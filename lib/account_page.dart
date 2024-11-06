import 'package:flutter/material.dart';
import 'manage_account_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ListTile(
              title: const Text('Kelola Akun'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ManageAccountPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Notifikasi'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle navigation to notifications
              },
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle navigation to privacy policy
              },
            ),
            ListTile(
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle navigation to terms of service
              },
            ),
          ],
        ),
      ),
    );
  }
}
