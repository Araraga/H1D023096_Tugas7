import 'package:flutter/material.dart';
import 'package:h1d023096_tugas7/ui/form_data.dart';
import 'package:h1d023096_tugas7/ui/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Menggunakan FutureBuilder untuk mengecek status login (Local Storage)
      home: FutureBuilder<bool>(
        future: _checkLoginStatus(),
        builder: (context, snapshot) {
          // Jika masih loading, tampilkan indikator loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          // Jika sudah login, ke FormDataPage. Jika belum, ke LoginPage.
          if (snapshot.data == true) {
            return const FormDataPage();
          } else {
            return const LoginPage();
          }
        },
      ),
      // Definisi Routes (Opsional, tapi memudahkan navigasi)
      routes: {
        '/login': (context) => const LoginPage(),
        '/form': (context) => const FormDataPage(),
      },
    );
  }

  // Fungsi untuk cek status login dari SharedPreferences
  Future<bool> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    // Mengembalikan true jika 'is_login' bernilai true
    return prefs.getBool('is_login') ?? false;
  }
}