<div align='center'><img src='20231230_134848.png'/></div>

# Framework

Inventaris dirancang dengan maksud untuk bergerak menuju struktur yang lebih generik / mandiri sehingga dapat diintegrasikan ke dalam kerangka kerja apa pun tanpa terlalu banyak kesulitan. Saya akan menulis panduan untuk mengatur dukungan secara manual _sometime segera™_. Sementara itu, ini akan berfungsi tanpa perubahan apa pun jika menggunakan pembaruan terbaru ke **[ESX Legacy](https://github.com/esx-framework/esx-legacy)**.

Dukungan eksperimental untuk [qb-core](https://github.com/qbcore-framework/qb-core) telah ditambahkan, tetapi diperlukan.

# Config

Lihat pengaturan konfigurasi Anda.
Saat diatur, Anda dapat menambahkan yang berikut ini ke 'server.cfg' Anda

```
exec @ox_inventory/config.cfg
ensure ox_inventory
```

# Logging

The _free plan_ is enough for most user's purposes and provides far more utility than the typical weird discord logs utilised in other resources.

Once you have registered, generate an API key and add `set datadog:key 'apikey'` to your server config.

# Features

### Shops

- Membuat toko yang berbeda untuk 24/7, Ammunasi, Toko Minuman Keras, Mesin Penjual Otomatis, dll.
- Toko terbatas pekerjaan, seperti Gudang Senjata Polisi.
- Item dapat dibatasi untuk nilai pekerjaan dan lisensi tertentu.
- Tentukan harga untuk setiap item, dan bahkan memungkinkan mata uang yang berbeda (uang hitam, chip poker, dll).

### Items

- Data item generik dibagi antara objek.
- Data spesifik disimpan per-slot, dengan metadata untuk menyimpan informasi khusus.
- Senjata, lampiran, dan daya tahan.
- Penggunaan item yang fleksibel memungkinkan bilah kemajuan, panggilan balik server, dan pembatalan dengan fungsi dan ekspor sederhana.
- Dukungan untuk item yang terdaftar di ESX.

### Stashes

- Keamanan sisi server mencegah akses sewenang-wenang ke simpanan apa pun.
- Dukungan simpanan pribadi, dapat dibuka dengan pengidentifikasi yang berbeda.
- Simpanan yang dibatasi pekerjaan serta loker bukti polisi.
- Ekspor server memungkinkan pendaftaran simpanan dari sumber daya apa pun (lihat [di sini](https://github.com/FreyasStone/ox_inventory_examples/blob/main/server.lua)).
- Akses simpanan kecil melalui wadah, seperti kantong kertas, dari menggunakan barang.
- Kotak sarung tangan dan bagasi kendaraan, baik untuk yang dimiliki maupun yang tidak dimiliki.

### Temporary stashes

- Dumpsters, drops, and non-player vehicles.
- Loot tables allow users to find random items in dumpsters and unowned vehicles.

<br><div><h4 align='center'><a href='https://discord.gg/hmcmv3P7YW'>Discord Server</a></h4></div><br>

<table><tr><td><h3 align='center'>Legal Notices</h2></tr></td>
<tr><td>
Ox Inventory

Copyright © 2022 [Linden]()
Program ini adalah perangkat lunak bebas: Anda dapat mendistribusikan ulang dan / atau memodifikasi
itu di bawah ketentuan Lisensi Publik Umum GNU sebagaimana diterbitkan oleh
Free Software Foundation, baik versi 3 dari Lisensi, atau
(sesuai pilihan Anda) versi yang lebih baru.

Program ini disalurkan dengan harapan bermanfaat,
tetapi TANPA JAMINAN APA PUN; bahkan tanpa jaminan tersirat dari
DAPAT DIPERJUALBELIKAN ATAU KESESUAIAN UNTUK TUJUAN TERTENTU. Lihat
GNU General Public License untuk lebih jelasnya.

Anda seharusnya menerima .
If not, see <https://www.gnu.org/licenses/>

</td></tr></table>
