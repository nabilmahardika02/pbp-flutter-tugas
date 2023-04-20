## TUGAS 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Widget dapat berupa stateful atau stateless. Jika sebuah widget dapat berubah—ketika pengguna berinteraksi dengannya, misalnya—itu stateful.

Widget stateless tidak pernah berubah. Icon, IconButton, dan Text adalah contoh widget stateless. Subkelas widget Stateless StatelessWidget.

Widget stateful bersifat dinamis: misalnya, dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Checkbox, Radio, Slider, InkWell, Form, dan TextField adalah contoh widget stateful. Subkelas widget Stateful StatefulWidget.

### Sebutkan seluruh widget yang kamu pakai di proyek kali ini dan jelaskan fungsinya masing-masing.
- MaterialApp: predifined class yang menyediakan berbagai widget dan layanan umum yang diperlukan untuk sebagian besar aplikasi
- MyHomePage: StatelessWidget yang mendefiniskan halaman beranda dari aplikasi
- Scaffold: widget yang menyediakan struktur dasar untuk mengimplementasikan bahasa visual desain material
- AppBar: sebuah widget yang menyediakan toolbar untuk Scaffold
- Text: widget yang menampilkan rangkaian teks di layar
- SingleChildScrollView: widget yang menyediakan perilaku scroll untuk widget turunannya saat tidak ada cukup ruang untuk menampilkannya
- Padding: widget yang menambahkan padding pada widget turunannya
- Column: wisget yang menyusun widget turunannya dalam kolom vertikal
- GridView.count: widget yang membuat grid widget turunan dengan jumlah kolom tetap
- InkWell: widget yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event
- Container: widget yang menyediakan elemen visual persegi panjang yang dapat dihias dengan borders, background color, dan shadows
- Icon: widget yang menampilkan ikon grafis di layar
- SnackBar: widget yang menampilkan pesan sementara di bagian bawah layar
- Material: widget yang menyediakan elemen visual persegi panjang yang dapat digunakan sebagai area yang dapat diklik
- Center: widget yang menempatkan widget turunannya di tengah di dalam dirinya sendiri

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).
1. Membuka Command Prompt dan masuk ke direktori yang diinginkan
2. Generate proyek Flutter dengan menulis perintah ```flutter create study_tracker```
3. Merapikan struktur proyek agar lebih mudah dibaca:
a. Membuat file baru dengan nama menu.dart pada folder lib
b. Meng-import ```'package:flutter/material.dart'``` pada menu.dart
c. Memindahkan class MyHomePage yang ada di main.dart ke menu.dart
d. Meng-import menu.dart pada main.dart
4. Mengubah sifat halaman MyHomePage menjadi stateless (karena widget hanya menampilkan Snackbar saat ada touch event dan tidak menampilkan perubahan apa pun)
5. Menghapus parameter title pada MyHomePage dan mengubah parameter key menjadi opsional
6. Menghilangkan parameter title pada pemanggilan MyHomePage
7. Menghapus final String title sampai bawah, lalu menambahkan Widget Build
#### Build
8. Menambakan widget Scaffold sebagai hasil return -> visual design dari aplikasi
#### Build/Scaffold
9. Menambahkan widget AppBar untuk menyediakan toolbar yang menampilkan title aplikasi "Study Tracker"
10. Menambahkan body aplikasi dengan widget SingleChildScrollView yang menyediakan perilaku scroll untuk widget turunannya
#### Build/Scaffold/SingleChildScrollView
11. Menambahkan widget Padding untuk menambahkan padding pada body sebesar 10 pixel pada setiap sisi
#### Build/Scaffold/SingleChildScrollView/Padding
12. Menamabahkan widget Column untuk menampilkan children secara vertikal
#### Build/Scaffold/SingleChildScrollView/Padding/Column
13. Membuat children untuk menampilkan judul "Selamat Datang!"
⋅⋅⋅a. Menambahkan widget Padding untuk menambahkan padding pada body sebesar 10 pixel pada sisi atas dan bawah.⋅⋅
⋅⋅⋅b. Menambahkan widget Text untuk menampilkan rangkaian teks "Selamat Datang!", dan mengatur text align-nya ke tengah, font sebesar 30 yang di-bold.⋅⋅
14. Menambahkan widget GridView.count untuk membuat grid widget turunan dan mengatur scroll enabler, padding, crossAxisSpacing, mainAxisSpacing, crossAxisCount, dan shrinkWrap
#### Build/Scaffold/SingleChildScrollView/Padding/Column/GridView.count
15. Membuat children untuk tombol "Melihat Study Tracker"
⋅⋅⋅a. Mengatur warna tombol menjadi biru.⋅⋅
⋅⋅⋅b. Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event.⋅⋅
⋅⋅⋅c. Pada widget InkWell, menambahkan SnackBar "Kamu telah menekan tombol Lihat study Tracker!" saat tombol ditekan.⋅⋅
⋅⋅⋅d. Menambahkan widget Container untuk menyimpan Icon dan Text.⋅⋅
16. Membuat children untuk tombol "Tambah Tugas"
⋅⋅⋅a. Mengatur warna tombol menjadi hijau.⋅⋅
⋅⋅⋅b. Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event.⋅⋅
⋅⋅⋅c. Pada widget InkWell, menambahkan SnackBar Kamu telah menekan tombol Tambah Tugas!" saat tombol ditekan.⋅⋅
⋅⋅⋅d. Menambahkan widget Container untuk menyimpan Icon dan Text.⋅⋅
17. Membuat children untuk tombol "Logout"
⋅⋅⋅a. Mengatur warna tombol menjadi merah.⋅⋅
⋅⋅⋅b. Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event.⋅⋅
⋅⋅⋅c. Pada widget InkWell, menambahkan SnackBar "Kamu telah menekan tombol Logout!" saat tombol ditekan.⋅⋅
⋅⋅⋅d. Menambahkan widget Container untuk menyimpan Icon dan Text.⋅⋅

# pbp_flutter_tutorial

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
