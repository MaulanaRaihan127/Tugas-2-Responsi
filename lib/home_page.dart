import 'package:flutter/material.dart';
import './account_page.dart';
import './login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeContentPage(),
    AccountPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maulana Raihan 5210411127'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Widget Grid View',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image.png', // Ganti path dengan lokasi gambar Anda
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      const Text('Artist'),
                      const Text('Song'),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Widget List View',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.article, size: 40),
                  title: Text('Headline'),
                  subtitle: Text(
                      'Description duis aute irure dolor in reprehenderit in voluptate.'),
                  trailing: Icon(Icons.play_arrow),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
