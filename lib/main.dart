
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HalamanCounter(),
    );
  }
}

// StatefulWidget untuk halaman counter
class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

// State yang menyimpan nilai counter
class _HalamanCounterState extends State<HalamanCounter> {

  // Variabel untuk menyimpan angka
  int angka = 0;

  // Fungsi tambah
  void tambah() {
    setState(() {
      angka++;
    });
  }

  // Fungsi kurang
  void kurang() {
    setState(() {
      angka--;
    });
  }

  // Fungsi reset
  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Judul
            const Text(
              'Nilai Counter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Menampilkan angka counter
            Text(
              '$angka',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 30),

            // Tombol tambah dan kurang
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Tombol tambah
                ElevatedButton(
                  onPressed: tambah,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(18),
                  ),
                  child: const Icon(Icons.add, size: 30),
                ),

                const SizedBox(width: 20),

                // Tombol kurang
                ElevatedButton(
                  onPressed: kurang,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(18),
                  ),
                  child: const Icon(Icons.remove, size: 30),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Tombol reset
            ElevatedButton.icon(
              onPressed: reset,
              icon: const Icon(Icons.refresh),
              label: const Text('Reset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
