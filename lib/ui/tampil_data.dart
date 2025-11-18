import 'package:flutter/material.dart';

class TampilDataPage extends StatelessWidget {
  final String name;
  final String nim;
  final int age;
  final int birthYear;

  const TampilDataPage({
    super.key,
    required this.name,
    required this.nim,
    required this.age,
    required this.birthYear,
  });

  @override
  Widget build(BuildContext context) {
    if (name.toLowerCase().contains('jokowi') && nim == '1681' && birthYear == 1961) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/asli.jpg',
                width: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("balik"),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      appBar: AppBar(
        title: const Text('Detail Ijazah'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFDF5),
                  border: Border.all(
                    color: const Color(0xFFC5A059),
                    width: 8.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(6.0),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF5D4037),
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.workspace_premium,
                        size: 60,
                        color: Color(0xFFC5A059),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'IJAZAH',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Color(0xFF3E2723),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'No: 001/FLUTTER/2025',
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Diberikan kepada:',
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        name.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                          color: Color(0xFF3E2723),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Dengan identitas sebagai berikut:',
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        textAlign: TextAlign.center,
                        'Nomor Induk Mahasiswa: $nim',
                        style: const TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5D4037),
                        ),
                      ),
                      Text(
                        'Usia Saat Ini: $age Tahun',
                        style: const TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Telah menyelesaikan dan memenuhi syarat pendidikan Sarjana pada Program Studi Kehutanan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'REKTOR',
                                style: TextStyle(fontFamily: 'Serif'),
                              ),
                              const SizedBox(height: 50),
                              Container(
                                width: 120,
                                height: 1,
                                color: Colors.black,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Akhmad Sodiq',
                                style: TextStyle(
                                  fontFamily: 'Serif',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}