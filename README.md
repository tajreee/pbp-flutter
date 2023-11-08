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


## Pertanyaan dan jawaban untuk Tugas 7
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
    - Mengubah color dari widget dengan menambahkan atribut colors di Statefull Widget
