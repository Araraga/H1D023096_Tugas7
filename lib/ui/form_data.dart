import 'package:flutter/material.dart';
import 'package:h1d023096_tugas7/ui/tampil_data.dart';
import 'package:h1d023096_tugas7/ui/sidebar.dart';

class FormDataPage extends StatefulWidget {
  const FormDataPage({super.key});

  @override
  _FormDataPageState createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _birthYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari Ijazah'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      drawer: const Sidebar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: "Nama"),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _nimController,
                  decoration: const InputDecoration(labelText: "NIM"),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _birthYearController,
                  decoration: const InputDecoration(labelText: "Tahun Lahir"),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String name = _nameController.text;
                      String nim = _nimController.text;
                      int birthYear = int.tryParse(_birthYearController.text) ?? 0;
                      int age = (birthYear > 0) ? DateTime.now().year - birthYear : 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TampilDataPage(
                            name: name,
                            nim: nim,
                            age: age,
                            birthYear: birthYear,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Tampilkan'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}