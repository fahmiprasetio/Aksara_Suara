-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2024 pada 12.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksara_suara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `nomor` int(11) NOT NULL,
  `judul_artikel` varchar(255) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL,
  `nama_penulis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`nomor`, `judul_artikel`, `tanggal_terbit`, `nama_penulis`) VALUES
(1, 'Laila Sari: Nenek Roker Betawi yang Menghibur Tiga Generasi', '2024-01-01', 'Andi Wijaya'),
(2, 'Pesona Pasar Apung: Warisan Budaya Nusantara yang Mengapung di Atas Air', '2024-02-15', 'Budi Santoso'),
(3, 'Benyamin Gada Matinye!!', '2024-03-10', 'Rina Putri'),
(4, 'Mengungkap Pesona Tenun Batik Tradisional: Kain yang Menceritakan Kisah Indonesia', '2024-04-05', 'Siti Nurhayati'),
(5, 'Mengenal Wayang Kulit: Seni Tradisional yang Menyimpan Sejuta Makna', '2024-05-20', 'Dedi Kurniawan'),
(6, 'Ragam Tari Nusantara: Menggali Identitas Bangsa Lewat Gerak dan Irama', '2024-06-10', 'Intan Pratiwi'),
(7, 'Kopi Toraja: Eksotisme dan Tradisi di Setiap Tegukan', '2024-07-25', 'Rizal Ardiansyah'),
(8, 'Pakaian Adat Nusantara: Keindahan Budaya dalam Setiap Rancangan', '2024-08-15', 'Ayu Lestari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerajinan_tangan`
--

CREATE TABLE `kerajinan_tangan` (
  `id` int(11) NOT NULL,
  `nama_kerajinan` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `tanggal_ditambahkan` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kerajinan_tangan`
--

INSERT INTO `kerajinan_tangan` (`id`, `nama_kerajinan`, `asal`, `harga`, `tanggal_ditambahkan`) VALUES
(1, 'Kain Tenun Sumba', 'Sumatra Barat', 100000.00, '2024-11-12'),
(2, 'Gerabah Kasongan', 'Bantul, Yogyakarta', 250000.00, '2024-11-12'),
(3, 'Patung Asmat', 'Papua', 150000.00, '2024-11-12'),
(4, 'Noken', 'Papua', 150000.00, '2024-11-12'),
(5, 'Ukiran Jepara', 'Jepara, Jawa Tengah', 150000.00, '2024-11-12'),
(6, 'Kain Ulos', 'Sumatra Utara', 150000.00, '2024-11-12'),
(7, 'Wayang Kulit', 'Jawa Tengah & Jawa Timur', 150000.00, '2024-11-12'),
(8, 'Keris', 'Jawa & Sumatra', 700000.00, '2024-11-12'),
(9, 'Wayang Golek', 'Jawa Barat', 100000.00, '2024-11-12'),
(10, 'Kain Songket', 'Palembang, Sumatra', 300000.00, '2024-11-12'),
(11, 'Topeng Pakem', 'Indramayu, Jawa Barat', 100000.00, '2024-11-12'),
(12, 'Kain Batik', 'Jawa Tengah', 500000.00, '2024-11-12'),
(13, 'Lukisan Bali', 'Bali', 250000.00, '2024-11-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian_adat`
--

CREATE TABLE `pakaian_adat` (
  `ID_pakaian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakaian_adat`
--

INSERT INTO `pakaian_adat` (`ID_pakaian`, `nama`, `asal`, `stok`, `harga`) VALUES
(1, 'Baju Ulos', 'Sumatera Utara', 10, 100000),
(2, 'Batik Yogyakarta', 'Yogyakarta', 13, 200000),
(3, 'Baju Surjan', 'Jawa Tengah', 11, 300000),
(4, 'Baju Linto Baro', 'Aceh', 9, 300000),
(5, 'Baju Adat Gayo', 'Aceh', 6, 300000),
(6, 'Baju Payas Agung', 'Bali', 15, 300000),
(7, 'Baju Toba Merah', 'Sumatera Utara', 8, 300000),
(8, 'Baju Kurung Betawi', 'Jakarta', 10, 300000),
(9, 'Baju Kurung Minang', 'Sumatera Barat', 14, 300000),
(10, 'Baju Bodo', 'Sulawesi Selatan', 7, 300000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama_panggilan` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto_profil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_panggilan`, `nama_lengkap`, `email`, `telepon`, `kata_sandi`, `alamat`, `foto_profil`) VALUES
(10, 'Naufal', 'Naufal Fahmi Prasetio', 'nfahmi086@gmail.com', '081353462719', '$2y$10$GPUpafbuUlqPUUefyBm8ruApK814sc5nUZtryFRpQdLuHA.aOWP7m', 'Jatinegara, Jakarta Timur', '67445af01a1c3_profil.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket_acara_kesenian`
--

CREATE TABLE `tiket_acara_kesenian` (
  `ID` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `harga` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tiket_acara_kesenian`
--

INSERT INTO `tiket_acara_kesenian` (`ID`, `judul`, `lokasi`, `tanggal`, `harga`, `deskripsi`, `gambar`) VALUES
(1, 'Gema Barongan Nusantara : Harmoni Kekuatan dan Budaya', 'Taman Budaya Jawa Timur', '2024-11-15', 'IDR 50.000', 'Festival seni tradisional yang menampilkan pertunjukan Barongan, warisan budaya dari Jawa Timur yang penuh energi dan makna.', 'barongan-crop.jpeg.png'),
(2, 'Kaleidoskop Cerita: Festival Wayang Kulit Anak di Yogyakarta', 'Taman Budaya Yogyakarta', '2024-12-20', 'Gratis', 'Saksikan keajaiban seni pertunjukan dalam Festival Wayang Kulit Anak di Taman Budaya Yogyakarta, menampilkan cerita dan karakter ikonik.', 'festival-wayang-anak.jpeg'),
(3, 'Harmoni Gerak: Festival Tari Jaran Kepang Wanita Yogyakarta', 'Pendopo Agung UGM, Yogyakarta', '2024-11-25', 'IDR 80.000', 'Pertunjukan seni tari Jaran Kepang yang mengedepankan keanggunan dan kekuatan penari wanita, mencerminkan budaya lokal Yogyakarta yang kaya.', 'jaran-kepang-wanita-crop.png'),
(4, 'Pesona Abadi: Pertunjukan Tari Ramayana di Prambanan', 'Candi Prambanan, Yogyakarta', '2025-01-12', 'Gratis', 'Keindahan Tari Ramayana yang diadakan di Candi Prambanan, menggambarkan kisah epik Ramayana dengan gerakan anggun dan kostum yang memukau.', 'sendratari-ramayana-prambanan-crop.png'),
(5, 'Langkah Kelana: Dinamika Topeng Kelana dari Cirebon', 'Gedung Kesenian Cirebon', '2025-01-20', 'IDR 50.000', 'Menampilkan kisah ambisi dan perjuangan seorang raja yang penuh emosi. Setiap gerakan tarian ini mencerminkan kompleksitas karakter.', 'tari-topeng-klana-cirebon-crop.png'),
(6, 'Ritual Nyepi: Sehari dalam Keheningan dan Refleksi di Bali', 'Pura Besakih, Kabupaten Karangasem, Bali', '2024-03-11', 'Gratis', 'Perayaan Tahun Baru Saka di Bali yang dirayakan dengan hari penuh keheningan, tanpa aktivitas, dan bertujuan untuk membersihkan jiwa serta alam.', 'acara-kesenian-nyepi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `kerajinan_tangan`
--
ALTER TABLE `kerajinan_tangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pakaian_adat`
--
ALTER TABLE `pakaian_adat`
  ADD PRIMARY KEY (`ID_pakaian`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tiket_acara_kesenian`
--
ALTER TABLE `tiket_acara_kesenian`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kerajinan_tangan`
--
ALTER TABLE `kerajinan_tangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pakaian_adat`
--
ALTER TABLE `pakaian_adat`
  MODIFY `ID_pakaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tiket_acara_kesenian`
--
ALTER TABLE `tiket_acara_kesenian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pengguna` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
