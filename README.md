# Tutorial 4 - Godot Platformer (Latihan Mandiri)

## Latihan Mandiri: Level Baru (Level 2)

Pada latihan mandiri ini, fitur-fitur baru dan menarik telah ditambahkan ke dalam game untuk memperkaya gameplay khususnya pada Level 2.

1. **Koneksi Level 1 ke Level 2**: Jika pemain berhasil memenangkan Level 1 (menyentuh roket/Win Area), game akan otomatis memuat Level 2 alih-alih menampilkan WinScreen.
2. **Karakter Pemain Baru**: Karakter pemain telah diubah khusus untuk Level 2 menggunakan `spritesheet_alien.png` yang berwarna hijau.
3. **Mekanik Menunduk (Ducking)**: Pemain sekarang dapat menunduk dengan menekan tombol Panah Bawah (`ui_down`). Menunduk akan mengecilkan collision shape dan sprite, memungkinkan pemain menghindari rintangan yang terbang rendah.
4. **Mekanik Double Jump**: Pemain kini memiliki kemampuan untuk melompat dua kali di udara (Double Jump). Hal ini memungkinkan pemain melompat lebih tinggi dan lebih jauh, sangat berguna untuk melewati jurang yang lebar dan menghindari Barnacle.
5. **Desain TileMap Baru & Dinamis**: Menggunakan tileset bersalju (`spritesheet_gr_snow.png`) dari Kenney Assets. Level 2 didesain cukup panjang dan tidak lagi monoton! Terdapat variasi ketinggian pijakan (platform) yang menanjak dan menurun, serta dilengkapi 3 jurang (gap hazard) yang berbahaya.
6. **Rintangan Baru**:
   - Spawner sekarang memiliki indikator visual di dalam Godot Editor agar posisinya terlihat jelas saat mengedit Level.
   - **Barnacle**: Jatuh dari atas (Platform 2). Pemain harus melompat untuk menghindarinya.
   - **Ladybug**: Terbang rendah melintasi Platform 3. Terdapat Ladybug yang berpatroli dan terbang rendah secara berkala, memaksa pemain menunduk.
7. **Portal Teleportasi**: Tersedia satu *Teleport Portal* rahasia berupa area koin besar yang ditempatkan di dalam jurang pertama (gap 1). Jika pemain jatuh ke dalam jurang pertama, alih-alih mati, mereka akan diteleportasi dengan selamat ke atas jurang ketiga (gap 3) mendekati garis finish roket!

## Referensi
- [Kenney Platformer Pack](https://kenney.nl/assets/platformer-art-deluxe)
- Dokumentasi resmi Godot untuk RigidBody2D, TileMap, Signals, dan GDScript.
- Materi Tutorial 4 (UI Godot Engine).
