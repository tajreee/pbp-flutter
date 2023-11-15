# Flutter Mobile PBP

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Pertanyaan dan Jawaban untuk Tugas 7
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    - Stateless Widget adalah suatu widget yang telah dikonfigurasikan secara statis sehingga semuanya telah diinisialisasikan sejak awal. Stateless Widget tidak akan bisa dirubah.
    - Statefull Widget adalah suatu widget yang dikonfigurasikan secara dinamis sehingga dapat berubah seiring pengembangan program. Stateful Widget dapat mengubah atau mengupdate tampilan, menambah widget laiinya, mengubah nilai variabel, icon, warna dan masih banyak lagi.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    - MaterialApp: Widget ini berfungsi sebagai root aplikasi Flutter dan menentukan keseluruhan tema, termasuk warna utama, gaya teks, dan tampilan keseluruhan.
    - MyHomePage: Widget ini mewakili layar beranda sebenarnya dari aplikasi dan merangkum konten dan tata letak halaman utama.
    - Scaffold: Widget ini menyediakan struktur dasar halaman Flutter, mengelola bilah aplikasi, konten isi, dan bilah navigasi bawah.
    - AppBar: Widget ini mewakili bilah aplikasi di bagian atas layar, biasanya berisi judul aplikasi dan tombol navigasi.
    - SingleChildScrollView: Widget ini membungkus widget turunannya dan memungkinkan pengguliran jika konten melebihi ruang layar yang tersedia.
    - Padding: Widget ini menambahkan padding di sekitar widget turunannya, sehingga menciptakan margin antara konten turunan dan widget di sekitarnya.
    - Column: Widget ini menyusun widget turunannya dalam kolom vertikal, satu di bawah yang lain.
    - Text: Widget ini menampilkan string teks biasa di layar.
    - GridView.count: Widget ini mengatur widget turunannya dalam tata letak kotak, dengan jumlah kolom tertentu.
    - Material: Widget ini menciptakan permukaan desain material, memberikan warna latar belakang dan efek ketinggian.
    - InkWell: Widget ini menciptakan area interaktif yang merespons ketukan atau gerakan.
    - Container: Widget ini adalah wadah serbaguna yang dapat menampung widget lain dan menerapkan gaya seperti margin, padding, dan warna latar belakang.
    - Center: Widget ini menyelaraskan widget turunannya ke tengah widget induknya.
    - Icon: Widget ini menampilkan ikon, memungkinkan representasi visual dari tindakan atau konsep.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).
    - Mengubah file main.dart menjadi file saat ini.
    - Membuat file menu.dart sebagai tampilan homepage aplikasi mobile.
    - Membuat class Homepage yang meng-extends Statefull Widget agar tampilannya dapat diubah-ubah dengan kreativitas individu.
    - Menambahkan class ShopItem.
    - Membuat class ShopCard yang meng-extends Stateless Widget yang digunakan memunculkan snackbar.
    - Mengubah color dari widget dengan menambahkan atribut colors di Statefull Widget.

## Pertanyaan dan Jawaban untuk Tugas 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    - Navigator.push() memasukkan halaman yang dituju ke dalam stack yang masih memiliki hubungan dengan halaman sebelumnnya. Misal di halaman A ada navigasi ke halaman B, maka ketika suatu tombol yang menavigasi ke B ditekan, maka posisi halaman B pada stack akan berada di atas halaman A sehingga ketika di-pop(), akan kembali ke halaman A.
    - Navigator.pushReplacement() memasukkan halaman yang dituju ke dalam stack dengan menggantikan/me-replace halaman sebelumnya sehingga ketika di-pop(), tidak akan kembali ke halaman sebelum navigasi. Misal di halaman A dilakukan pushReplacement, maka halaman A yang ada di stack akan digantikan dengan halaman B yang merupakan tujuan dari navigasi pada halaman A, sehingga halaman A hilang dari stack.
    
    - Contoh implementasi Navigator.push().
        if (item.name == "Lihat Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowItemPage()));
          }

          if (item.name == "Tambah Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddItemForm()));
          }
    
    - Contoh implementasi Navigator.pushReplacement().
        onPressed: () {
            Navigator.pop(context);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    - Container = Widget untuk mengatur tata letak dan dekorasi. container bisa digunakan sebagai wadah untuk widget lainnya.
    - Row = Widget yang menyusun widget-child secara horizontal. Digunakan ketika Anda ingin menata widget secara sejajar satu sama lain dalam satu baris.
    - Column = Widger untuk menyusun widget-child secara vertikal. Ini berguna ketika Anda ingin menata widget secara berurutan dari atas ke bawah.
    - ListView = Widget scrollable yang menyusun widget-child secara vertikal atau horizontal. Cocok digunakan ketika memiliki daftar item yang banyak.
    - GridView = Widget scrollable yang menyusun widget-child dalam bentuk grid. Berguna ketika Anda memiliki sejumlah besar item dan ingin menampilkannya dalam tata letak grid.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    - Widget yang saya gunakan untuk input pada form adalah TextFormField untuk nama, harga, dan deskripsi yang elemen inputnya terdiri dari:
        - decoration yang digunakan untuk melakukan styling pada TextFormField.
        - onChanged digunakan untuk memperbarui perubahan input yang terjadi di TextFormField.
        - validator digunakan untuk memvalidasi input yang diberikan agar sesuai dengan tipe data yang diinginkan.

4. Bagaimana penerapan *clean architecture* pada aplikasi Flutter?
    - Dengan memisahkan berbagai macam file ke dalam direktori yang sesuai untuk memisahkan tanggung jawab dan meningkatkan pemeliharaan, uji, dan fleksibilitas kode. Seperti misal file dart yang hanya berfungsi untuk menampilkan antarmuka, maka file tersebut dapat dipindahkan ke dalam direktori screens atau misal ada file dart yang digunakan sebagaikan tempat pembentukan model objek, maka file tersebut dapat dipindahkan ke direktori entities yang digunakan sebagai lokasi file-file yang berfunsgi membuat objek.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    - Membuat file dart baru untuk membuat input form.
    - Menambahkan navigasi dari menu.dart ke file input form.
    - Merancang tata letak menggunakan widget yang mendukung seperti Column, Padding, Align dan lain-lain.
    - Menambahkan widget TextFormField sebagai wadah untuk input form.
    - Melakukan styling, validasi, event-driven yang sesuai dengan kebutuhan.
    - Menambahkan tombol save untuk menyimpan data yang telah diinput oleh user.
    - Menampilkan popup informasi input yang telah disimpan oleh user.
    - Menyimpan data tersebut ke dalam suatu list agar dapat ditampilkan di suatu halaman.
    - Membuat file dart baru untuk menampilkan data yang telah diinput oleh user.
    - Menambahkan navifasi dari menu.dart ke file menampilkan data.
    - Merancang tata letak menggunakan widget yang mendukung seperti Column, ListView, ListTile dan lain-lain.
    - Melakukan looping untuk mengakses semua data agar dapat ditampilkan semuanya.
    - Melakukan styling untuk memperindah tampilan datanya.
    - Membuat file dart baru untuk menampung class dan widget untuk membuat drawer.
    - Membangun drawer tersebut dengan StatefulWidget sesuai dengan tata letak dan dekorasi yang diinginkan menggunakan layout-layout widget yang sesuai.
    - Menghubungkan drawer dengan halaman yang sesuai agar dapat melakukan navigasi dengan cepat.
    - Melakukan git add, commit, dan push ke dalam repository.