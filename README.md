## TUGAS 8
### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
1. Menambahkan Halaman Baru: Saat Anda ingin menampilkan halaman baru, Anda menggunakan metode push pada Navigator. Halaman baru ditambahkan ke tumpukan halaman Navigator, dan halaman sebelumnya tetap ada di bawahnya.
2. Transisi Antar Halaman: Ketika halaman baru ditambahkan, Navigator akan memainkan transisi animasi untuk memvisualisasikan perubahan dari halaman sebelumnya ke halaman baru. Transisi animasi ini dapat dikonfigurasi dan disesuaikan sesuai kebutuhan aplikasi.
3. Menampilkan Halaman Baru: Setelah transisi animasi selesai, halaman baru ditampilkan di layar dan menjadi halaman yang aktif. Pengguna dapat berinteraksi dengan halaman baru ini.
4. Kembali ke Halaman Sebelumnya: Jika pengguna ingin kembali ke halaman sebelumnya, Anda menggunakan metode pop pada Navigator. Halaman teratas dalam tumpukan halaman dihapus, dan halaman sebelumnya di bawahnya menjadi halaman aktif lagi. Navigator akan memainkan transisi animasi yang sesuai untuk menggambarkan perubahan ini.
5. Mengganti Halaman: Jika Anda ingin mengganti halaman saat ini dengan halaman baru, Anda dapat menggunakan metode pushReplacement pada Navigator. Halaman saat ini dihapus dari tumpukan, dan halaman baru ditambahkan sebagai halaman baru di atasnya. Ini memungkinkan penggantian halaman tanpa menyimpan halaman sebelumnya dalam tumpukan.
6. Menghapus Halaman dari Tumpukan: Selain pop, Navigator juga menyediakan metode lain seperti popUntil untuk menghapus satu atau beberapa halaman dari tumpukan berdasarkan kondisi tertentu. Hal ini memungkinkan penghapusan beberapa halaman sekaligus dari tumpukan Navigator.
7. Navigasi Berdasarkan Nama Rute: Navigator juga mendukung navigasi berdasarkan nama rute dengan menggunakan metode seperti pushNamed dan popAndPushNamed. Dalam metode ini, Anda mendefinisikan nama rute untuk halaman, dan Navigator akan menangani penambahan, penghapusan, dan transisi antar halaman berdasarkan nama rute yang diberikan.

### Sebutkan dan jelaskan tipe routing yang disediakan oleh Navigator.
1. Push: Metode push digunakan untuk menambahkan halaman baru ke tumpukan (stack) Navigator. Halaman baru ditambahkan di atas halaman saat ini, dan pengguna akan melihat transisi antara halaman yang baru ditambahkan dan halaman saat ini. Ketika pengguna menekan tombol "Back" atau memanggil metode pop, halaman yang baru ditambahkan akan dihapus dari tumpukan, dan pengguna akan kembali ke halaman sebelumnya.
2. Pop: Metode pop digunakan untuk menghapus halaman saat ini dari tumpukan Navigator. Hal ini mengembalikan pengguna ke halaman sebelumnya dalam tumpukan, dan pengguna akan melihat transisi yang sesuai. Metode pop juga dapat digunakan untuk mengirim data kembali ke halaman sebelumnya.
3. Replace: Metode pushReplacement dan pushReplacementNamed digunakan untuk menggantikan halaman saat ini dengan halaman baru dalam tumpukan Navigator. Halaman saat ini dihapus dari tumpukan dan diganti dengan halaman baru. Ini berguna saat Anda ingin mengganti halaman saat ini dengan halaman baru tanpa menyimpan halaman sebelumnya dalam tumpukan.
4. PopUntil: Metode popUntil digunakan untuk menghapus halaman-halaman dari tumpukan Navigator sampai kondisi tertentu terpenuhi. Kondisi ini bisa berupa fungsi yang mengembalikan true atau nama route tertentu.
5. PushNamed dan PopAndPushNamed: Metode pushNamed dan popAndPushNamed digunakan ketika Anda ingin melakukan navigasi berdasarkan nama rute (route name) yang telah ditentukan sebelumnya dalam aplikasi. Ini memungkinkan Anda untuk melakukan navigasi tanpa perlu menginstansiasi halaman secara langsung, tetapi dengan menggunakan nama rute yang telah didefinisikan sebelumnya.
6. PushNamedAndRemoveUntil: Metode pushNamedAndRemoveUntil digunakan untuk menghapus semua halaman dari tumpukan Navigator dan menambahkan halaman baru. Ini memungkinkan Anda untuk membuat halaman baru sebagai halaman pertama dalam tumpukan.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. Tap Event: Digunakan untuk menangani ketika pengguna mengetuk (tap) suatu elemen pada layar. Contohnya, pengguna mengetuk tombol atau gambar.
2. Long Press Event: Digunakan untuk menangani ketika pengguna menahan (long press) suatu elemen pada layar dalam jangka waktu tertentu. Contohnya, pengguna menahan suatu gambar untuk menampilkan opsi lain.
3. Swipe Event: Digunakan untuk menangani gerakan swipe oleh pengguna pada layar. Contohnya, pengguna melakukan swipe ke kanan atau ke kiri pada daftar elemen.
4. Scroll Event: Digunakan untuk menangani peristiwa scroll (gulir) oleh pengguna pada elemen scrollable, seperti daftar (list) atau grid. Contohnya, menangani perubahan posisi scroll untuk memuat lebih banyak data.

### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- Scaffold: widget yang menyediakan struktur dasar untuk mengimplementasikan bahasa visual desain material
- AppBar: sebuah widget yang menyediakan toolbar untuk Scaffold
- Text: widget yang menampilkan rangkaian teks di layar
- SingleChildScrollView: widget yang menyediakan perilaku scroll untuk widget turunannya saat tidak ada cukup ruang untuk menampilkannya
- Padding, Column, Icon, InputBorder, TextButton, ListView, Center, Container, dan lain-lain digunakan untuk mengatur tata letak dan tampilan dari elemen-elemen dalam halaman form.
- Drawer: Widget ini digunakan untuk membuat tampilan drawer yang dapat digeser dari sisi kiri layar. Drawer biasanya berisi daftar menu atau navigasi yang dapat dipilih oleh pengguna.
- DrawerMenu: Widget ini merujuk ke kelas DrawerMenu yang didefinisikan di file terpisah. Ini digunakan untuk menampilkan drawer di bagian kiri layar.
- ListTile: Widget ini digunakan untuk menampilkan item daftar yang berinteraksi dengan pengguna. Pada kode tersebut, ListTile digunakan untuk menampilkan item menu dalam drawer. Item menu tersebut memiliki teks judul "Menu" dan akan menavigasikan pengguna ke halaman utama ketika ditekan.
- Form: Widget ini digunakan untuk membuat bentuk form yang dapat divalidasi. Pada kode tersebut, Form digunakan sebagai wadah untuk beberapa TextFormField dan tombol "Tambah".
- TextFormField: Widget ini digunakan untuk mengambil input teks dari pengguna dalam bentuk field/form. Pada kode tersebut, TextFormField digunakan empat kali untuk menerima input dari pengguna untuk nama tugas, nama mata kuliah, persentase progress, dan deskripsi tugas.
- TextButton: Widget ini digunakan untuk membuat tombol teks yang merespons ketika ditekan. Pada kode tersebut, TextButton digunakan untuk membuat tombol "Tambah" dengan gaya tampilan dan perilaku yang ditentukan.
- Dialog: Widget ini digunakan untuk membuat dialog yang muncul di atas halaman saat ini. Pada kode tersebut, Dialog digunakan untuk menampilkan dialog dengan informasi data yang diisi dalam form.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).
1. Membuat folder baru dengan nama ```widgets``` pada folder ````lib```
2. Membuat sebuah file baru dengan nama ```drawer.dart``` pada folder ```lib/widgets```
3. Meng-import ```menu.dart``` (menu app) dan ```material.dart```
4. Membuat class dengan nama ```DrawerMenu``` yang di-extend dari StatelessWidget
5. Membuat widget ```Drawer``` dari class tersebut
6. Di dalam widget ```Drawer```, membuat widget ```Column```
7. Di dalam widget ```Column```, membuat widget ```ListTile``` untuk merepresentasikan item menu
8. Di dalam item menu, membuat properti ```onTap``` untuk memerintahkan app untuk mengganti halaman saat ini dengan halaman ```MyHomePage``` (menu) dengan menggunakan ```Navigator.pushReplacement```, ketika item tersebut ditekan (tapped).
9. Membuka ```menu.dart```
10. Menambahkan ```drawer: const DrawerMenu()``` sebelum body untuk menambahkan drawer pada halaman menu
#### Menambahkan halaman form
11. Membuat file baru pada folder lib/pages dengan nama form.dart
12. Meng-import drawer.dart, flutter/material.dart, dan flutter/services.dart
13. Membuat class MyFormPage yang di extend dari StatefulWidget
14. Membuat widget ```Scaffold``` yang menyediakan struktur tata letak dasar untuk halaman form
15. Di dalam widget tersebut, membuat widget ```AppBar``` yang menampilkan judul 'Form'
16. Di dalam widget ```Scaffold```, juga membuat widget drawer yang merepresentasikan ```DrawerMenu()``` yang telah dibuat sebelumnya
17. Membuat body ```Scaffold```
18. Menambahkan form key sebagai handle dari state, validasi, dan penyimpanan form.
19. Membuat widget ```SingleChildScrollView``` sebagai child dari widget Form
20. Membuat widget ```Container``` sebagai child dari widget SingleChildScrollView
21. Menambahkan ```padding``` pada widget ```Container``` sebesar 20 pixels
22. Membuat widget ```Column``` sebagai child dari widget ```Container```
23. Membuat widget ```TextFormField``` yang dibungkus oleh ```Padding``` sebagai salah satu children dari widget ```Column``` dan menambahkan variabel _namaTugas sebagai placeholder dari nilai yang diketik pada TextFormField
24. Membuat widget ```TextFormField``` yang dibungkus oleh ```Padding``` sebagai salah satu children dari widget ```Column``` dan menambahkan variabel _namaMatkul sebagai placeholder dari nilai yang diketik pada TextFormField
24. Membuat widget ```TextFormField``` yang dibungkus oleh ```Padding``` sebagai salah satu children dari widget ```Column``` dan menambahkan variabel persentaseProgress sebagai placeholder dari nilai yang diketik pada TextFormField
25. Membuat widget ```TextFormField``` yang dibungkus oleh ```Padding``` sebagai salah satu children dari widget ```Column``` dan menambahkan variabel _deskripsiTugas sebagai placeholder dari nilai yang diketik pada TextFormField
26. Membuat tombol yang akan menyimpan data yang ada di setiap elemen input.
27. Menambahkan fungsi ```showDialog()``` pada bagian ```onPressed()``` dan munculkan widget ```Dialog``` pada fungsi tersebut.
28. Menambahkan informasi yang didapat dari form menggunakan widget ```Text``` dan melakukan string interpolation agar keterangan data dan isi data dapat disajikan dalam satu widget. Data yang disajikan adalah nama tugas, nama mata kuliah, persentase progress, dan deskripsi tugas.
29. Mengimpor ```form.dart``` pada ```menu.dart```
30. Mengimpor ```form.dart``` pada ```drawer.dart```
31. Pada ```menu.dart```, mengubah properti ```onTap``` dari tombol Tambah Transaki untuk memerintahkan app untuk mengganti halaman saat ini dengan halaman ```MyFormPage``` dengan menggunakan ```Navigator.pushReplacement```, ketika item tersebut ditekan (tapped).

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
- Menambahkan widget Padding untuk menambahkan padding pada body sebesar 10 pixel pada sisi atas dan bawah
- Menambahkan widget Text untuk menampilkan rangkaian teks "Selamat Datang!", dan mengatur text align-nya ke tengah, font sebesar 30 yang di-bold
14. Menambahkan widget GridView.count untuk membuat grid widget turunan dan mengatur scroll enabler, padding, crossAxisSpacing, mainAxisSpacing, crossAxisCount, dan shrinkWrap
#### Build/Scaffold/SingleChildScrollView/Padding/Column/GridView.count
15. Membuat children untuk tombol "Melihat Study Tracker"
- Mengatur warna tombol menjadi biru
- Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event
- Pada widget InkWell, menambahkan SnackBar "Kamu telah menekan tombol Lihat study Tracker!" saat tombol ditekan
- Menambahkan widget Container untuk menyimpan Icon dan Text
16. Membuat children untuk tombol "Tambah Tugas"
- Mengatur warna tombol menjadi hijau
- Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event
- Pada widget InkWell, menambahkan SnackBar Kamu telah menekan tombol Tambah Tugas!" saat tombol ditekan
- Menambahkan widget Container untuk menyimpan Icon dan Text
17. Membuat children untuk tombol "Logout"
- Mengatur warna tombol menjadi merah
- Menambahkan widget InkWell yang menyediakan area yang dapat diklik di layar dan dapat merespons touch event
- Pada widget InkWell, menambahkan SnackBar "Kamu telah menekan tombol Logout!" saat tombol ditekan
- Menambahkan widget Container untuk menyimpan Icon dan Text

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
