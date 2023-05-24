## TUGAS 9
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, dalam Flutter, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Flutter menyediakan library yang kuat seperti http untuk mengambil data dari API dan mendekode JSON menjadi objek Flutter.
Dalam pendekatan ini, kita tidak perlu membuat model terlebih dahulu untuk mengurai JSON menjadi objek yang ditentukan. Melalui pendekatan lain, kita dapat menggunakan tipe data dinamis seperti Map<String, dynamic> untuk mewakili struktur JSON yang diambil.
Namun, ada beberapa hal yang perlu dipertimbangkan saat memutuskan apakah menggunakan pendekatan tanpa model atau membuat model terlebih dahulu:
1. Ketidakpastian tipe data: Dalam pendekatan tanpa model, tipe data dianggap dinamis (dynamic), yang berarti kita kehilangan manfaat dari tipe data statis yang dapat memberikan keamanan tambahan dan dukungan pemeriksaan kesalahan saat mengakses data.
2. Kesalahan penamaan: Jika kita mengakses data menggunakan indeks atau kunci yang tidak valid, tidak ada pemeriksaan kesalahan saat kompilasi. Ini dapat menyebabkan kesalahan runtime yang sulit dilacak.
3. Kekurangan pemahaman struktur data: Tanpa model yang terdefinisi dengan jelas, sulit untuk memahami struktur data yang diharapkan tanpa melihat langsung kode. Model dapat berfungsi sebagai dokumentasi dan memfasilitasi kerja sama tim dalam memahami dan menggunakan data yang diambil.

Jadi, meskipun memungkinkan untuk mengambil data JSON tanpa membuat model terlebih dahulu, dalam beberapa kasus lebih baik mempertimbangkan pendekatan dengan membuat model terlebih dahulu untuk menghasilkan kode yang lebih aman, lebih terdokumentasi, dan lebih mudah dipahami. 

### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
1. Membuat fungsi (cth: fetchAssignment()) yang mengembalikan Future pada FutureBuilder, yang akan digunakan untuk mengambil data secara asinkronus
    * Pengambilan data JSON: Menggunakan library http untuk melakukan permintaan HTTP ke endpoint API yang menyediakan data dalam format JSON.
    * Pemrosesan respons: Setelah mendapatkan respons dari API, pemrosesan dilakukan. pemrosesan respons dilakukan dengan cara melakukan decode response menjadi bentuk json.
    * Konversi ke object model: melakukan konversi data json menjadi object Assignment dengan menambahkan item di decode data ke List<Assignment> listAssignment
2. Menggunakan FutureBuilder di dalam widget tree, dan memberikan fungsi fetchAssignment() yang mengembalikan Future sebagai parameter future.
3. Di dalam builder callback, enggunakan snapshot untuk mengakses status koneksi, data yang diperoleh, atau pesan kesalahan jika terjadi.
4. Menampilkan data yang diinginkan

### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Input data akun pada Flutter: Di aplikasi Flutter, user akan meng-input informasi akun menggunakan widget TextField berupa username dan password
2. Permintaan otentikasi ke Django: Setelah user memasukkan informasi akun, Flutter App perlu mengirim permintaan otentikasi ke Django menggunakan library http untuk melakukan permintaan HTTP POST ke endpoint otentikasi yang disediakan pada Django.
3. Verifikasi autentikasi oleh Django: Di sisi server, Django akan memproses permintaan otentikasi dan memverifikasi kecocokan antara informasi akun yang diberikan dengan yang ada di sistem. Django akan memeriksa kebenaran informasi akun dan mengembalikan respons yang sesuai.
4. Tanggapan otentikasi ke Flutter: Setelah Django memproses permintaan otentikasi, Django akan mengirimkan tanggapan ke aplikasi Flutter. Flutter App akan memeriksa status tanggapan untuk menentukan apakah autentikasi berhasil atau gagal. Jika autentikasi berhasil, Flutter App dapat menyimpan token otentikasi yang diberikan oleh Django untuk digunakan pada permintaan berikutnya.
5. Tampilan menu pada Flutter: Jika autentikasi berhasil, Flutter App akan menampilkan menu pada aplikasi Flutter.

### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- Provider: Widget ini digunakan untuk mengatur state manajemen dengan menggunakan konsep Provider dari Flutter. Biasanya digunakan untuk mengelola state aplikasi secara global.
- MaterialApp: Widget ini digunakan untuk membuat aplikasi Flutter dengan menggunakan desain material. Ini menyediakan banyak fitur dan pengaturan yang terkait dengan aplikasi, seperti judul, tema, dan halaman beranda.
- Scaffold: Widget ini digunakan untuk membuat kerangka dasar aplikasi, yang mencakup struktur tampilan dasar seperti AppBar dan body.
- AppBar: Widget ini digunakan untuk menampilkan bilah aplikasi di bagian atas. 
- Container: Widget ini digunakan untuk membuat wadah yang dapat mengandung widget lain.
- Column: Widget ini digunakan untuk menampilkan widget secara vertikal dalam satu kolom.
- TextField: Widget ini digunakan untuk membuat input teks yang dapat diisi oleh pengguna.
- SizedBox: Widget ini digunakan untuk memberikan jarak kosong vertikal antara widget. 
- ElevatedButton: Widget ini digunakan untuk membuat tombol yang menimbulkan efek naik ketika ditekan. 
- SnackBar: Widget ini digunakan untuk menampilkan pesan sementara yang muncul di bagian bawah layar. 
- AlertDialog: Widget ini digunakan untuk menampilkan dialog dengan judul dan konten. 
- Drawer: Widget ini digunakan untuk membuat menu geser yang muncul dari sisi aplikasi. 
- FutureBuilder: Widget ini digunakan untuk membangun UI berdasarkan hasil masa depan (future).
- Center: Widget ini digunakan untuk menengahkan widget-child secara horizontal dan vertikal. 
- Text: Widget ini digunakan untuk menampilkan teks. 
- ListView.builder: Widget ini digunakan untuk membuat daftar scrollable yang mengandung banyak item dengan menggunakan pembangun (builder).
- ListTile: Widget ini digunakan untuk membuat item dalam daftar dengan judul dan opsi lainnya.
- MaterialPageRoute: Widget ini digunakan untuk mendefinisikan rute atau halaman baru dalam aplikasi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).
#### Migrasi proyek tugas Django kamu ke salah satu PaaS alternatif.
1. Membuka situs web DOM Cloud Hosting
2. Melakukan login dan menekan tombol Add a website
3. Memilih untuk mengimpor repositori GitHub yang sudah ada (Clone from GitHub)
4. Memilih repositori aplikasi Tugas2_dua.
5. Mengkonfigurasi deployment untuk aplikasi Django yang menginisiasi layanan PostgreSQL dan sertifikat SSL untuk layanan HTTPS 
6. Menekan tombol Add Website untuk memulai proses deployment. DOM Cloud Hosting akan melakukan proses deployment secara otomatis sesuai dengan konfigurasi yang telah kita buat.
#### Mengintegrasikan sistem autentikasi pada Django 
7. Membuat django-app bernama authentication
8. Menambahkan authentication ke INSTALLED_APPS pada django_tutorial/settings.py.
9. Menjalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan.
10. Menjalankan perintah pip freeze > requirements.txt
11. Menambahkan corsheaders ke INSTALLED_APPS pada django_tutorial/settings.py aplikasi.
12. Menambahkan corsheaders.middleware.CorsMiddleware ke MIDDLEWARE pada django_tutorial/settings.py aplikasi.
13. Membuat variabel baru di django_tutorial/settings.py dengan nama CORS_ALLOW_ALL_ORIGINS, CORS_ALLOW_CREDENTIALS, CSRF_COOKIE_SECURE, dan SESSION_COOKIE_SECURE dan berikan nilai True untuk tiap variabel
14. Membuat variabel baru di django_tutorial/settings.py dengan nama CSRF_COOKIE_SAMESITE dan SESSION_COOKIE_SAMESITE dan berikan nilai 'None' untuk tiap variabel
15. Buatlah sebuah metode view untuk login pada authentication/views.py. yang menerima permintaan POST username dan password dan mengautentikasi permintaan tersebut. Hasil autentikasi nantinya akan di-return dalam bentuk json
16. Membuat file urls.py pada folder authentication dan menambahkan routing login
17. Menambahkan path('auth/', include('authentication.urls')), pada file django_tutorial/urls.py.
18. Melakukan re-deployment proyek django

#### Mengintegrasikan sistem autentikasi pada Flutter
18. Menginstal package pbp_django_auth dan provider pada flutter
19. memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider
20. Mengubah home pada widget MaterialApp menjadi LoginPage()
21. Membuat file baru pada folder pages dengan nama login.dart.
22. Mengimpor library Provider dan package pbp_django_auth ke komponen pada main.dart dan pages/login.dart
23. Mengimpor library material.dart dan menu.dart ke komponen pada pages/login.dart
24. Membuat LoginPage yang menerima input username dan password (dengan TextField), mengecek kredensial input tersebut, dan mengarahkan user ke homepage jika login berhasil

#### Membuat model kustom sesuai dengan proyek aplikasi Django.
25. Membuka https://webbed-energy-zoa.domcloud.io/tracker/json/
26. Menyalin data JSON yang tersedia dan membuka situs web Quicktype.
27. Pada situs web Quicktype, mengubah setup name menjadi Assignment, source type menjadi JSON, dan language menjadi Dart
28. Mem-paste data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype.
29. Meng-klik pilihan Copy Code pada Quicktype.
30. Buatlah file baru pada folder lib/model dengan nama assignment_detail.dart
31. Mem-paste kode yang telah disalin sebelumnya ke file assignment_detail.dart

#### Membuat halaman yang berisi semua tugas yang ada pada endpoint JSON di Django
32. Melakukan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.
33. Pada file android/app/src/main/AndroidManifest.xml, menambahkan kode <uses-permission android:name="android.permission.INTERNET" /> di bahwah <application> untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
34. Membuat file baru pada folder lib/pages dengan nama assignment.dart
35. Pada file transaction.dart, mengimpor library http dan convert, dan mengimpor model assignment_model.dart dan drawer.dart
36. Membuat AssignmentPage yang dapat membangun UI berdasarkan hasil (data) kedepannya dan membuat list scrollable yang mengandung banyak item dari data dengan menggunakan builder
37. Menambahkan AssignmentPage ke widget/drawer.dart
38. Mengubah fungsi tombol Riwayat Tugas pada lib/pages/menu.dart agar mengarahkan ke halaman AssignmentPage
39. Mengimpor assignment.dart ke drawer.dart
40. Mengimpor library pbp_django_auth dan provider ke menu.dart, dan mengimpor assignment.dart dan login.dart ke menu.dart

#### Membuat halaman detail untuk setiap tugas yang ada pada daftar tersebut.
41. Membuat file baru pada folder lib/pages dengan nama assignment_detail.dart
42. Mengimpor library material.dart, convert dan http ke assignment_detail.dart
43. Mengimpor assignment_model.dart, assignment.dart, dan drawer.dart
44. Membuat DetailPage yang memiliki parameter pk, yang akan digunakan untuk mengakses data json sesuai dengan pk-nya (id)
45. Membangun DetailPage yang dapat membangun UI berdasarkan hasil (data) kedepannya dan membuat list scrollable yang mengandung banyak item dari data dengan menggunakan builder. Data yang ditampilkan adalah 'name', 'subject', 'date', 'progress', dan 'description'
46. Pada assignment.dart, menambahkan widget InkWell dengan properti onTap pada saat ListView dibangun, yang akan mengarahkan pada DetailPage dengan parameter pk (id) dari data dengan index yang diambil

#### Menambahkan tombol untuk kembali ke daftar tugas.
47. Pada DetailPage, menambahkan widget ElevatedButton dengan properti onPressed yang akan mengarahkan ke AssignmentPage saat tombol ditekan

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
