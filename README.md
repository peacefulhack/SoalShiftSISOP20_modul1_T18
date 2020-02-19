# Penjelasan dan Penyelesaian Soal Shift 1 Sistem Operasi
disusun oleh: M. Mikail Dwi Khusnanda (028) & Ghifari Akbar


# soal nomer 1a
<h2>1. Penjelasan</h2>
pada poin a, menentukan wilayah bagian (region) mana yang memiliki keuntungan (profit) paling
sedikit dengan data yang sudah disajikan. dengan menggunakan AWK.
dalam hal ini, mahasiswa diharapkan sudah mengetahui tentang
<ul>
  <li>bash</li>
  <li>AWK</li>
  <li>Gawk</li>
</ul>
dengan cara menjumlahkan profit dari region yang sama, lalu membandingkan sampai dapat region dengan keuntungan paling sedikit.

<h2>2. Penyelesaian</h2>
<img src="dokumentasi/dokum1.png">
<p>dalam script diatas, pertama masukkan awk untuk mengidentifikasi bahwa yang kita jalankan adalah dapur perinta awk. lalu mengetikkan "BEGIN" yang mana begin adalah script yang dilakukan sekali dan pertama kali. dan kami isi dengan mendeklarasikan perintah. lalu pada bagian tengah, yaitu bagian yang dijalankan berulang ulang, kami memasukkan satu satu, jika row 13 adalah (Central/West/South/East) maka menjalankan:</p>
<h6>a = a + row 21(profit)</h6><p>sebenarnya bisa menggunakan a+=row 21, namun agar mudah dimengerti, kami lebih memilih cara bisasa, yaitu a = a+ row 21<br>Pada bagian end, kami menggunakan pendeteksi biasa, jika central kurang dari west south dan east maka print central, dan seterusnya.</p>
<h6>FPAT='([^,]+)|("[^"]+")'</h6>
<p>digunakan ketika kita memerlukan separator dengan kondisi, disini kita menggunakan separator "," namun tanda koma didalam petik, tidak sebagai separator melainkan sebuah nama satu kesatuan, maka kita tulis seperti diatas. yang terakhir adalah setelah ditulis semua, jangan lupa menuliskan dataset yang akan kita ambil, disini contohnya adalah Sample-Superstore.csv</p>
