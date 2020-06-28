# ESHOP

ESHOP Merupakan sebuah aplikasi toko online atau ecommers berbasis web framework codeigniter yang dikembangkan oleh [Masrizal Eka Yulianto](https://www.linkedin.com/in/masrizaleka/). Aplikasi ini menggunakan api Rajaongkir untuk mengecek ongkos kirim dari layanan ekspedisi (jne, pos, tiki). Aplikasi ini adalah aplikasi hasil pengembangan dari aplikasi web [Responsive eCommerce CodeIgniter](https://github.com/zamanet/Responsive-eCommerce-CodeIgniter).

Catatan : anda dapat melihat catatan pembaruan repository [disini](https://github.com/yuliant/eshop/blob/master/documentation/update-note.rst).

## Cara Install
1. Silahkan clone atau download repository ini.
2. Import database yang berada di `.\databases\eshop.sql` ke MySQL Database anda.
3. Lakukan konfigurasi pada `.\application\config\database.php` untuk mengatur database.
4. (opsional)Check apakah file .htaccess sudah ada atau tidak. Jika tidak ada,Tambahkan file .htaccess untuk bypass index.php .
5. Done, silahkan jalankan website.

## Fitur - Fitur
### User
1. soon

### Admin
1. soon

### Superadmin
1. soon

## Catatan
untuk kamu yang mendevelop mengunakan laragon, mungkin akan mendapatkan error `.Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'blablablabla' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by` di beberapa fitur dari aplikasi ini. Untuk mengatasi itu kamu dapat mengaktifkan ONLY_FULL_GROUP_BY pada mysql caranya yaitu:
1. temporary: menambahkan script ini `.SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));` pada query mysql.
2. permanen: kamu dapat mengikuti intruksi dilink ini [KLIK INI](https://stackoverflow.com/questions/23921117/disable-only-full-group-by).