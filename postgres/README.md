🐘 Folder postgres/
Folder ini digunakan untuk menyimpan data volume PostgreSQL yang digunakan oleh container Docker PostgreSQL. Semua file database (data, tabel, dan konfigurasi runtime PostgreSQL) akan otomatis tersimpan di sini oleh Docker saat container dijalankan.

📌 Tujuan
Docker akan melakukan mount volume ke folder ini agar data PostgreSQL tetap tersimpan secara persisten meskipun container dihapus atau dibuat ulang.

⚠️ Peringatan
Jangan hapus isi folder ini, kecuali Anda memang ingin mereset database dari awal.

Jika ingin versi untuk README atau dokumentasi proyek, saya juga bisa bantu buat versi Markdown lengkapnya.
