# ESHOP

ESHOP Merupakan sebuah aplikasi toko online atau ecommers berbasis web framework codeigniter yang dikembangkan oleh [Masrizal Eka Yulianto](https://www.linkedin.com/in/masrizaleka/). Aplikasi ini menggunakan api Rajaongkir untuk mengecek ongkos kirim dari layanan ekspedisi (pos dan tiki). Aplikasi ini adalah aplikasi hasil pengembangan dari aplikasi web [Responsive eCommerce CodeIgniter](https://github.com/zamanet/Responsive-eCommerce-CodeIgniter).

Catatan : anda dapat melihat catatan pembaruan repository [disini](https://github.com/yuliant/eshop/blob/master/documentation/update-note.rst).

## Cara Install
1. Silahkan clone atau download repository ini.
2. Import database yang berada di `.\databases\eshop.sql` ke MySQL Database anda.
3. Lakukan konfigurasi pada `.\application\config\database.php` untuk mengatur database.
4. Lakukan konfigurasi pada `.\application\config\brand.php` untuk mengatur toko.
5. (opsional)Check apakah file .htaccess sudah ada atau tidak. Jika tidak ada,Tambahkan file .htaccess untuk bypass index.php .
6. Done, silahkan jalankan website.

## Fitur - Fitur
### User
1. Mendaftar dan login sebagai user.
2. Menampilkan menu home, daftar produk, blog, konfirmasi pemesanan, cek resi dan cek status pemesanan.
3. Mengelola profil, dan melihat riwayat pemesanan.
4. Melihat dan menambahkan daftar pemesanan di keranjang.
5. Melalukan checkout, memilih kurir (ambil di toko offline, pos dan tiki), melakukan konfirmasi terhadap pemesanan (manual/kirim bukti transfer).
6. Menghubungi admin.

### Admin
1. Login sebagai admin
2. Melihat statistik pengunjung dan barang.
3. Mengelola modul toko: pesanan, produk, kategori produk, konsumen, supplier, dan rekening.
4. Mengelola modul blog: artikel, kategori artikel, dan tag artikel.
5. Melihat dan mencetak laporan penjualan.
6. Mengelola profil.
7. Melakukan konfirmasi pemesanan pelanggan

### Developer / superadmin
1. Login sebagai superadmin.
2. Memiliki hak yang sama seperti admin.
3. Mengelola modul web: identitas, menu, halaman, logo, slider, dan template.
4. Mengelola modul pengguna (baik user biasa, admin dan superadmin lainnya).

## Catatan
untuk kamu yang mendevelop mengunakan laragon, mungkin akan mendapatkan error `.Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'blablablabla' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by` di beberapa fitur dari aplikasi ini. Untuk mengatasi itu kamu dapat mengaktifkan ONLY_FULL_GROUP_BY pada mysql caranya yaitu:
1. temporary: menambahkan script ini `.SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));` pada query mysql.
2. permanen: kamu dapat mengikuti intruksi dilink ini [KLIK INI](https://stackoverflow.com/questions/23921117/disable-only-full-group-by).