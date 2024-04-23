import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
//Baris tersebut mengimpor package flutter/material.dart yang diperlukan untuk membangun antarmuka pengguna (UI) dengan Flutter. Selain itu, juga diimpor file poli.dart dari direktori model yang berisi definisi kelas Poli, serta file poli_detail.dart yang berisi implementasi detail poliklinik.

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key});
//Kelas PoliPage didefinisikan sebagai StatefulWidget. Kelas ini tidak memiliki properti (properties) dan hanya memiliki konstruktor kosong.
  @override
  State<PoliPage> createState() => _PoliPageState();
}

//Kelas PoliPage didefinisikan sebagai StatefulWidget. Kelas ini tidak memiliki properti (properties) dan hanya memiliki konstruktor kosong.

class _PoliPageState extends State<PoliPage> {
  //Kelas _PoliPageState didefinisikan sebagai kelas state untuk PoliPage. Kelas ini mewarisi State dan menentukan bahwa state ini terkait dengan widget PoliPage.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: "Poli Anak");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliAnak)),
              );
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
            ),
          ),
        ],
      ),
    );
  }
}
//Meng-override metode build() untuk membangun UI (antarmuka pengguna) dari halaman ini. Halaman ini menggunakan Scaffold sebagai root widget. AppBar menampilkan judul "Data Poli". body menggunakan ListView sebagai container untuk menampilkan daftar poliklinik.
//GestureDetector digunakan untuk memberikan interaksi ketika pengguna mengetuk daftar poliklinik. Ketika pengguna mengetuk daftar poliklinik "Poli Anak", maka akan dibuat objek poliAnak dengan nama poliklinik "Poli Anak" menggunakan kelas Poli. Selanjutnya, menggunakan Navigator.push, halaman PoliDetail akan ditampilkan dengan memberikan objek poliAnak sebagai parameter.
//Card digunakan untuk mengelompokkan ListTile yang berisi judul poliklinik.
//ListTile menampilkan judul poliklinik sesuai dengan teks yang diberikan.
//Terdapat beberapa Card dan ListTile yang menampilkan daftar poliklinik seperti "Poli Kandungan", "Poli Gigi", dan "Poli THT".
//Dengan demikian, kode tersebut mewakili halaman PoliPage yang menampilkan daftar poliklinik dan memberikan aksi ketika pengguna mengklik salah satu daftar poliklinik untuk membuka halaman detail poliklinik.