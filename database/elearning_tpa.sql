-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Agu 2020 pada 14.44
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning_tpa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktif`
--

CREATE TABLE `aktif` (
  `id` int(5) NOT NULL,
  `aktif` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktif`
--

INSERT INTO `aktif` (`id`, `aktif`) VALUES
(1, 'aktif'),
(2, 'tidak aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cat_post`
--

CREATE TABLE `cat_post` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cat_post`
--

INSERT INTO `cat_post` (`id`, `nama`) VALUES
(2, 'news'),
(9, 'Pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dujian`
--

CREATE TABLE `dujian` (
  `id` int(5) NOT NULL,
  `nama_ujian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dujian`
--

INSERT INTO `dujian` (`id`, `nama_ujian`) VALUES
(1, 'Verbal'),
(2, 'Kuantitatif'),
(3, 'Analitik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_jwb`
--

CREATE TABLE `hasil_jwb` (
  `id` int(50) NOT NULL,
  `id_ujian` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_matkul` varchar(100) DEFAULT NULL,
  `benar` varchar(100) DEFAULT NULL,
  `salah` varchar(200) DEFAULT NULL,
  `kosong` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `nilai` varchar(10) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `nilai_hrf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_jwb`
--

INSERT INTO `hasil_jwb` (`id`, `id_ujian`, `id_user`, `id_matkul`, `benar`, `salah`, `kosong`, `status`, `nilai`, `keterangan`, `nilai_hrf`) VALUES
(6, '8', 'U000000009', '1', '1', '0', '0', '1', '100.0', 'lulus', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matkul` int(5) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matkul`, `nama_matkul`) VALUES
(1, 'Magister');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mode`
--

CREATE TABLE `mode` (
  `id` int(10) NOT NULL,
  `acak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mode`
--

INSERT INTO `mode` (`id`, `acak`) VALUES
(1, 'acak'),
(2, 'tidak acak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) NOT NULL,
  `isi` text,
  `jam` time DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `feature_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(10) NOT NULL,
  `founder` varchar(100) DEFAULT NULL,
  `nama_course` varchar(100) DEFAULT NULL,
  `alamat` text,
  `no_tlp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `founder`, `nama_course`, `alamat`, `no_tlp`, `email`) VALUES
(1, 'Biro Psikologi', 'TPA - Magister', 'Yogyakarta', '085268929843', 'ahmadsubadri08@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(5) NOT NULL,
  `id_soal` varchar(20) NOT NULL,
  `id_ujian` varchar(20) NOT NULL,
  `soal` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `jawab` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `id_soal`, `id_ujian`, `soal`, `a`, `b`, `c`, `d`, `jawab`) VALUES
(3, 'A000000001', '2', '<p><strong>Bagian I : Verbal</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p><strong>Petunjuk soal 1-5: Pilihlah persamaan kata yang paling tepat </strong></p>\n<p>equilibrium =</p>', '<p>equity</p>', '<p>difference</p>', '<p>balance</p>', '<p>similarity</p>', 'C'),
(4, 'A000000002', '2', '<p>Smart =</p>', '<p>adaptive</p>', '<p>critial</p>', '<p>diligent</p>', '<p>intelligent</p>', 'D'),
(5, 'A000000003', '2', '<p>abroad =</p>', '<p>nation</p>', '<p>foreign</p>', '<p>council</p>', '<p>aboard</p>', 'B'),
(6, 'A000000004', '2', '<p>discovery</p>', '<p>outcome</p>', '<p>invention</p>', '<p>fine</p>', '<p>aboard</p>', 'B'),
(7, 'A000000005', '2', '<p>adaptation =</p>', '<p>action</p>', '<p>adjusment</p>', '<p>believable</p>', '<p>practicable</p>', 'A'),
(8, 'A000000006', '2', '<p><strong>Petunjuk soal 6-10: Pilihlah lawan kata yang paling tepat</strong></p>\n<p>clean X</p>', '<p>dirty</p>', '<p>dry</p>', '<p>smooth</p>', '<p>wet</p>', 'A'),
(9, 'A000000007', '2', '<p>heat X</p>', '<p>drastic</p>', '<p>warm</p>', '<p>early</p>', '<p>cold</p>', 'D'),
(10, 'A000000008', '2', '<p>secular</p>', '<p>wordly</p>', '<p>second</p>', '<p>united</p>', '<p>religious</p>', 'D'),
(11, 'A000000009', '2', '<p>urban X</p>', '<p>rural</p>', '<p>suburb</p>', '<p>village</p>', '<p>city</p>', 'A'),
(12, 'A000000010', '2', '<p>rational X</p>', '<p>integrated</p>', '<p>intuitive</p>', '<p>collective</p>', '<p>analitic</p>', 'B'),
(13, 'A000000011', '2', '<p>Petunjuk soal 11-20 : <strong>Pada setiap soal terdapat sepasang kata yang memiliki hubungan tertentu. pilihlah satu jawaban yang memiliki hubungan sama dengan pasangan tersebut.</strong></p>\n<p>api : hangus =</p>', '<p>dingin : membeku</p>', '<p>air : basah</p>', '<p>luka : obat</p>', '<p>panas : terbakar</p>', 'B'),
(14, 'A000000012', '2', '<p>uang : pundi-pundi =</p>', '<p>bunga : jambangan</p>', '<p>gelas : nampan</p>', '<p>air : tempayan</p>', '<p>rokok : asbak</p>', 'C'),
(15, 'A000000013', '2', '<p>buku : tebu =</p>', '<p>sekuntum : bunga</p>', '<p>rumput : ilalang</p>', '<p>ruas : bambu</p>', '<p>padi : rumpun</p>', 'C'),
(16, 'A000000014', '2', '<p>pianis : piano =</p>', '<p>fiolis : biola</p>', '<p>irama : melodi</p>', '<p>irama : melodi</p>', '<p>vokalis : penyanyi</p>', 'A'),
(17, 'A000000015', '2', '<p>thermometer : suhu =</p>', '<p>speedometer : jarak</p>', '<p>seismograf : gempa bumi</p>', '<p>kilometer : panjang</p>', '<p>iluminasi : cahaya</p>', 'B'),
(18, 'A000000016', '2', '<p>putaran : rotasi =</p>', '<p>diameter : lingkaran</p>', '<p>energi : radiasi</p>', '<p>pembiasan : refraksi</p>', '<p>persepsi : ilusi</p>', 'C'),
(19, 'A000000017', '2', '<p>Austria : Wina =</p>', '<p>Bali : pulau dewata</p>', '<p>Lombok : mutiara</p>', '<p>Riau : Pekanbaru</p>', '<p>Balikpapan : Sepinggan</p>', 'C'),
(20, 'A000000018', '2', '<p>antiseptik : kuman =</p>', '<p>analgesic : rasa sakit</p>', '<p>bunga : kumbang</p>', '<p>fungisida : serangga</p>', '<p>tikus : kucing</p>', 'A'),
(21, 'A000000019', '2', '<p>bintang : astronomi =</p>', '<p>bangsa : etnologi</p>', '<p>cuaca : curah hujan</p>', '<p>desa : sosiologi</p>', '<p>tanaman : nabati</p>', 'A'),
(22, 'A000000020', '2', '<p>kuman : penyakit =</p>', '<p>api : kebekaran</p>', '<p>ayam : telur</p>', '<p>ayah : anak</p>', '<p>dokter : obat</p>', 'A'),
(23, 'A000000021', '2', '<p><strong>Petunjuk soal 21-30 : Pilihlah kata yang paling tepat untuk melengkapi setiap kalimat di bawah ini</strong></p>\n<p>Di Indonesia _________ soal pangan ternyata tidak ada pangkal akhir sejak 20 tahun lalu. Sebagai negara agraris, pangan seharusnya tidak lagi menajdi masalah yang serius.</p>', '<p>polygon</p>', '<p>polemik</p>', '<p>polisemi</p>', '<p>policy</p>', 'B'),
(24, 'A000000022', '2', '<p>Dengan berjalanya tahun, ketika perusahaan menginginkan sistem komputer yang mampu menyelesaikan tugas yang lebih banyak dan bermacam-macam, para ____________ memodifikasi ____________&nbsp;yang sudah ada.</p>', '<p>analis; memori</p>', '<p>operator; brainware</p>', '<p>programmer; software</p>', '<p>instruktur; hardware</p>', 'C'),
(25, 'A000000023', '2', '<p>Pemilu adalah agenda ____________ menuju Indonesia Baru yang telah disepakati bersama.</p>', '<p>demokrasi</p>', '<p>perubahan</p>', '<p>reformasi</p>', '<p>revolusi</p>', 'C'),
(26, 'A000000024', '2', '<p>menjadi juara pada ____________ tenis Wimbledon adalah impian bagi petenis professional dunia.</p>', '<p>agenda</p>', '<p>kegiatan</p>', '<p>pertandingan</p>', '<p>turnamen</p>', 'D'),
(27, 'A000000025', '2', '<p>Ketergantungan terhadap gandum sebagai sumber bahan pangan sudah selayaknya dihentikan karena ___________ ini masih diimpor dari laur negri yang banyak menghabiskan&nbsp;____________ Negara</p>', '<p>bahan; anggaran</p>', '<p>komponen; biaya</p>', '<p>komoditas; utang</p>', '<p>komoditi; devisa</p>', 'D'),
(28, 'A000000026', '2', '<p>ISO 14000 adalah___________yang diberiakn oleh suatu lembaga tingkat internasioanal terhadap suatu aktivitas industry atau jasa pada umumnya yang dinilai______________lingkungan</p>', '<p>penilaian; memperhatikan</p>', '<p>predikat; peduli</p>', '<p>sertifikasi; ramah</p>', '<p>penghargaan; mengeksplorasi</p>', 'C'),
(29, 'A000000027', '2', '<p>Praktik____________adalah penjualan barang dalam jumlah besar di___________harga pokok dengan maksud untuk menguasai pasaran</p>', '<p>damping; di atas</p>', '<p>damping; di bawah</p>', '<p>pemasaran; di bawah</p>', '<p>penawaran; sesuai</p>', 'B'),
(30, 'A000000028', '2', '<p>________________ di daerah perkotaan telah menimbulkan permasalahan bagi kesejahteraan hidup yang bersumber dari adanyakelebihan penduduk yang melebihi kemampuan ____________ wilayah</p>', '<p>Transportasi; daya dukung</p>', '<p>Transmigrasi; daya alam</p>', '<p>Urbanisasi; daya dukung</p>', '<p>Relokasi, daya saing</p>', 'C'),
(31, 'A000000029', '2', '<p>Jakarta tidal lagi menjadi tempat _____________, melainkan sudah menjadi tempat ____________jual beli narkotika dan zat adiktif lainnya (NAPZA)</p>', '<p>penawaran; transit</p>', '<p>produksi; transit</p>', '<p>transaksi; penawaran</p>', '<p>transit; transaksi</p>', 'D'),
(32, 'A000000030', '2', '<p>_________________nilai tukar rupiah atas dolar AS menjadi modal dasar bagi upaya untuk menurunkan _______________ dan menggerakkan kembali roda perekonomian Indonesia</p>', '<p>Menguatnya; gejolak</p>', '<p>Naiknya; konflik</p>', '<p>Penguatan; inflasi</p>', '<p>Tingginya; deflasi</p>', 'C'),
(33, 'A000000031', '2', '<p style="text-align: center;"><strong>Petunjuk soal 31-40 : Jawablah setiap pertanyaan di bawah ini berdasarkan bacaan yang tersedia </strong></p>\n<p><strong>Bacaan untuk soal 31-32</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Inovasi sistem suara film terbaru dari Dolly Laboratories kini telah menginjak generasi ketiga, yang oleh Dolly dinamai DD AC-3 (DollyDigital Audio Code 3). DD AC-3&nbsp; sebenarnya merupakan perbaikan dari Dolly Stero yang masih menggunakan sinyal analog, dan Dolly Surround Digital.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DD AC-3 berisi saluran 5.1 yang sangat jernih, yakni 5 saluran tingkat nada penuh yang terpisah: kiri dan kanan depan, tengah, serta surround kiri dan kanan; plus sebuah subwoofer. Saluran kiri, tengah, dan kanan di belakang layar berfungsi menyajikan papran dialog yang jernih dan tepat. Saluran surround kiri dan kanan yang terpisah mampu meneggelamkan penonton ke dalam film dengan suara hidup. Saluran surround ini dalam DSD masih menyatu atau mono. Sedangkan saluran bass (subwoofer) menghadirkan dentuman arkstra untuk rangkaian efek khusus berfrekuensi rendah.</p>\n<p>Apakah kelebihan DD AC-3 dibanding DSD ?</p>', '<p>saluran 5.1</p>', '<p>saluran surround kiri dan kanan terpisah</p>', '<p>dilengkapi subwoofer</p>', '<p>sinyal monolog</p>', 'B'),
(34, 'A000000032', '2', '<p>Dalam bacaan di atas terdapat kalimat &ldquo;. . . . mampu meneggelamkan penonton . . . &ldquo;. Arti yang sama dengan kata &ldquo;meneggelamkan&rdquo; pada kalimat ini adalah :</p>', '<p>melibatkan</p>', '<p>membawa</p>', '<p>mengajak</p>', '<p>menghanyutkan</p>', 'D'),
(35, 'A000000033', '2', '<p><strong>Bacaan untuk soal 33-35</strong></p>\n<p>Gaji naik takjamin hilangnya korupsi, demikian bunyi judul berita yang termuat dalam sebuah media massa. Judul itu memikat dari segi tawaran,komentar seorang pakar hukum negri ini. Judul itu menyiratkan rendahnya budaya malu yang dimiliki oleh sebagian besar masyarakat.</p>\n<p>&ldquo;Lho soal korupsi apa hubungannya dengan budaya malu?&rdquo;, Tanya seorang anak muda kepada pakar hokum. &ldquo; Jelas dong! Itu bukan saja menyangkut soal pengertian dan kesadaran hokum, melainkan merembet kearah sikap mental, salah satu ujung tombak keyakinan untuk bersikap. Jadi jika seorang telah sengaja terbiasa mengkondisikan sikap mental korupnya, maka ini masalah yang cukup serius. Betapapun misalnya orang tersebut sebagai pegawai telah dinaikkan gajinya dan kesejahteraanya&rdquo;, jawab seorang pakar hukum.</p>\n<p>Sebenarnya kecenderungan korup itu di garis peluang dan kesempatan. Artinya, semakin besar orang memiliki kesempatan untuk bertindak, semakin besar godaan itu. Korup bukan hanya dalam artian finansial, melainkan bisa berkembang lebih jauh dari itu, bahkan menyangkut nilai, hati nurani, dan kebenaran bisa dibengkokluruskan.</p>\n<p>&nbsp;</p>\n<p>Di manakah letak hubungan antara budaya malu dengan korupsi ?</p>', '<p>dengan memiliki budaya malu seseorang tidak akan mengkondisikan dirinya dengan mental korup</p>', '<p>bidaya malu dan mental korup keduanya merupakan masalah yang menyangkut kesadaran hukum</p>', '<p>budaya malu menyangkut soal pengertian dan kesadaran hukum yang juga merembet kea rah sikap mental</p>', '<p>mental korup merupakan masalah serius walaupun gaji dan kesejahteraan hukum</p>', 'A'),
(36, 'A000000034', '2', '<p>Kebiasaan apakah yang merupakan masalah serius berdasarkan wacana di atas ?</p>', '<p>memperbesar peluang dan kesempatan untuk bertindak</p>', '<p>mengkondisikan mental korup</p>', '<p>merendahkan frekuensi budaya malu</p>', '<p>membengkokluruskan hati nurani</p>', 'B'),
(37, 'A000000035', '2', '<p>&ldquo;Semakin besar orang mempunyai kesempatan untuk bertindak, semakin besar pula godaan untuk itu&rdquo;. Arti pernyataan tersebut adalah :</p>', '<p>&ldquo;Semakin besar orang mempunyai kesempatan untuk bertindak, semakin besar pula godaan untuk itu&rdquo;. Arti pernyataan tersebut adalah :</p>', '<p>peluang dan kesempatan merupakan sebuah godaan</p>', '<p>semakin besar peluang untuk melakukan korupsi semakin besar pula kemungkinan untuk itu</p>', '<p>godaan menjadi besar apabila peluangnya diperbesar</p>', 'C'),
(38, 'A000000036', '2', '<p><strong>Baca untuk soal 36-37</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Pada tahun 1920-an, seorang peneliti Jerman bernama Ringelmann mengadakan penelitian tentang bagaimana tindakan kolektif mempengaruhi penampilan perorangan. Ringelmann menyuruh para pekerja Jerman untuk menarik seutas tali sekuat mungkin, dan mengukur usaha mereka dalam kilogram dengan menggunakan pengukur tekanan. Kadang-kadang para pekerja bekerja sendiri, kadang-kadang mereka bekerja dalam kelompok yang terdiri dari tiga atau delapan orang.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Akal sehat dan penelitian tentang dukungan sosial mungkin memperediksi bahwa orang akan berkerja lebih keras jika mereka menjadi bagian dari suatu kelompok daripada bila mereka berkerja seorang diri. Namun yang terjadi adalah sebaliknya. Bila menarik tali seorang diri, rata-rata tarikan individu kurang lebih 63 kg tekanan. Dalam kelompok yang terdiri dari tiga orang jumlah tarikan keseluruhan adalah 160 kg, atau hanya 53 kg per orang. Dalam kelompok delapan orang dorongan kekuatan kelompok secara keseluruhan meningkat sampai 248 kg, tetapi andil setiap orang menurn menjadi 31 kg, kurang dari setengah tekanan yang ditamoilkan oleh individu yang berkerja seorang diri. Gejala ini, bahwa sebagai anggota kelompok, individu bekerja kurang keras dibandingkan ketika bekerja seorang diri, disebut kemalasan sosial.</p>\n<p>&nbsp;</p>\n<p>Kesimpulan yang didapat dari bacaan di atas adalah :</p>', '<p>Penelitian Ringelmann tentang penampilan seseorang</p>', '<p>Pekerja Jerman diminta menarik seutas tali dan diukur usahanya</p>', '<p>Orang akan berkerja lebih keras bila menjadi bagian dari suatu tim</p>', '<p>Usaha seseorang dalam kerja kelompok akan lebih kecil dibandingkan usahanya dalam kerja individual</p>', 'D'),
(39, 'A000000037', '2', '<p>Kemalsan sosial umumnya terjadi karena :</p>', '<p>orang lebih suka bekerja sendiri</p>', '<p>bekerja dalam kelompok lebih menguntungkan</p>', '<p>terjadi penyebaran tanggung jawab dalam kerja kelompok</p>', '<p>sumbangan setiap individu terhadap kelompok besar</p>', 'C'),
(40, 'A000000038', '2', '<p><strong>Bacaan untuk soal 38-39</strong></p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Para orang tua sebaiknya cermat memilih lagu dan musik buat anak. Sebab kedua hal tersebut berpengaruh besar terhadap perkembangan dan kecerdasan anak. Sebuah musik dan lirik lagu yang indah dapat mendatangkan rasa nyaman, tenang, gembira dan penuh semangat. Musik mendorong pula perkembangan otak kanan, yang membuat daya imajinasi dan kreativitas berkembang dengan baik.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Anak-anak balita akan lebih mudah belajar dengan musik dan lagu. Lewat lagu orang tua dan guru dapat mengajari mereka berhitung, mengenal warna, dan sebagainya. Metode belajar yang populer disebut quantum learning ini terbukti efektif. Suasana riang yang menyenangkan dari lagu dan musik membuat anak gembira. Ia jadi bersemangat mempelajari hal-hal terbaru lewat nyanyian.</p>\n<p>&nbsp;</p>\n<p>Mengapa prang tua harus cermat dalam memilih lagu dan musik untuk anak-anaknya</p>', '<p>lagu dan musik dapat mendatangkan rasa yang menyenangkan</p>', '<p>lagu dan musik dapat digunakan untuk teman belajar</p>', '<p>lagu dan musik dapat menimbulkan suasana yang nyaman untuk belajar</p>', '<p>lagu dan musik dapat digunakan untuk sarana belajar</p>', 'D'),
(41, 'A000000039', '2', '<p>Apakah yang dimkasud dengan quantum learning menurut bacaan di atas ?</p>', '<p>metode belajar dalam suasana yang riang</p>', '<p>metode belajar melalui lagu dan musik</p>', '<p>metode belajar untuk anak-anak</p>', '<p>belajar melalui sarana yang memudahkan untuk diingat</p>', 'B'),
(42, 'A000000040', '2', '<p>kesimpulan yang dapat diamabil dari bacaaan di atas adalah :</p>', '<p>anak-anak balita dapat belajar dengan efektif</p>', '<p>lagu dan musik dapat digunakan untuk belajar secara cepat</p>', '<p>lagu dan musik meruapakan sarana baru untuk belajar secara efektif</p>', '<p style="text-align: left;">lagu dan musik merupakan sarana belajar yang efektif untuk anak balita</p>', 'D'),
(43, 'A000000041', '3', '<p style="text-align: center;"><strong>Bagian II : Kuantitatif</strong></p>\n<p style="text-align: center;"><strong>Petunjuk soal 1 &ndash; 10: setiap soal terdiri atas beberapa angka yang tersusun dalam </strong></p>\n<p style="text-align: center;"><strong>satu deret. Pilihlah satu angka yang paling tepat sebagai </strong></p>\n<p style="text-align: center;"><strong>kelanjutan dari urutan angka-angka di depannya.</strong></p>\n<p>&nbsp;</p>\n<p>2 6 10 16 ...</p>', '<p>26</p>', '<p>24</p>', '<p>22</p>', '<p>20</p>', 'A'),
(44, 'A000000042', '3', '<p>50 45 32 21 12 ...</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>8</p>', 'A'),
(45, 'A000000043', '3', '<p>5 8 13 20 29 ...</p>', '<p>30</p>', '<p>40</p>', '<p>50</p>', '<p>60</p>', 'B'),
(46, 'A000000044', '3', '<p>36 28 24 22 ...</p>', '<p>18</p>', '<p>20</p>', '<p>21</p>', '<p>26</p>', 'C'),
(47, 'A000000045', '3', '<p>4 12 6 18 9 ...</p>', '<p>18</p>', '<p>27</p>', '<p>36</p>', '<p>45</p>', 'B'),
(48, 'A000000046', '3', '<p>111 1 121 2 141 3 ...</p>', '<p>171</p>', '<p>161</p>', '<p>151</p>', '<p>141</p>', 'A'),
(49, 'A000000047', '3', '<p>1 9 25 49 ...</p>', '<p>64</p>', '<p>72</p>', '<p>80</p>', '<p>121</p>', 'D'),
(50, 'A000000048', '3', '<p>5 10 16 23 31 ...</p>', '<p>37</p>', '<p>38</p>', '<p>39</p>', '<p>40</p>', 'D'),
(51, 'A000000049', '3', '<p>1 6 2 8 5 12 ...</p>', '<p>10</p>', '<p>13</p>', '<p>15</p>', '<p>17</p>', 'A'),
(52, 'A000000050', '3', '<p>2 11 28 52 86 ...</p>', '<p>127</p>', '<p>133</p>', '<p>137</p>', '<p>143</p>', 'C'),
(53, 'A000000051', '3', '<p style="text-align: center;"><strong>Petunjuk soal 11 &ndash; 20: Tiap soal terdiri atas kolom kiri dan kolom kanan. Anda </strong></p>\n<p style="text-align: center;"><strong>diminta membandingkan dua kolom tersebut dan pilihlah:</strong></p>\n<p style="text-align: center;">&nbsp;</p>\n<table style="width: 100%; height: 100%;">\n<tbody>\n<tr>\n<td style="width: 50%; text-align: center;"><strong>Kolom Kiri</strong></td>\n<td style="width: 50%; text-align: center;"><strong>Kolom Kanan</strong></td>\n</tr>\n<tr>\n<td style="width: 50%;"><strong>3000 : 0,05</strong></td>\n<td style="width: 50%;"><strong>300 : 0,005</strong></td>\n</tr>\n</tbody>\n</table>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'C'),
(64, 'A000000052', '3', '<p>Jika a-b &gt; 0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b</p>\n<p>&nbsp; &nbsp; &nbsp; a</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'A'),
(65, 'A000000053', '3', '<p>Jika X &lt; 0</p>\n<p>&nbsp; &nbsp;[I/X]X&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; X+[-X]</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'A'),
(66, 'A000000054', '3', '<p>X, Y, Z adalah bilangan bulat lebih kecil dari nol</p>\n<p>&nbsp; &nbsp; X,Y,Z&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; X+Y+Z</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'B'),
(67, 'A000000055', '3', '<p>Y = X + 9&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; X + Y - 9</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'C'),
(68, 'A000000056', '3', '<p>X<sup>2</sup> + 5 = Y&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;B = a + 3</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'D'),
(69, 'A000000057', '3', '<p>Toko A memberi discount 10% pada harga sepatu Rp. 150.000,00. Toko B memberi discount 15% pada harga sepatu Rp. 160.000,00. Maka harga sepatu sesungguhnya:</p>\n<p>Di Toko A&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di Toko B</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'B'),
(70, 'A000000058', '3', '<p><img src="../data/kuantitatif/soal 18.JPG" alt="" width="500" height="200" /></p>\n<p>AB = BC = CA = 4 cm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EF = 2cm</p>\n<p>AD = DB&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GF = 4cm</p>\n<p>&nbsp;</p>\n<p>Sudut CAB&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sudut GFE</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'C'),
(71, 'A000000059', '3', '<p>X x Y = 25</p>\n<p>X + Y = 10</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;X&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Y</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'C'),
(72, 'A000000060', '3', '<p><img src="../data/kuantitatif/soal 20.JPG" alt="" width="500" height="200" /></p>\n<p>Sudut DEC&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;40<sup>o </sup>C = { (9/5 x 40) = 32}</p>', '<p>Bila jumlah kolom kiri lebih besar</p>', '<p>Bila jumlah kolom kanan lebih besar</p>', '<p>Bila jumlah kolom kiri dan kanan sama</p>', '<p>Bila hubungan antara kolom kiri dan kanan tidak dapat ditentukan</p>', 'D'),
(73, 'A000000061', '3', '<p style="text-align: center;"><strong>Petunjuk soal 21 &ndash; 30: Pilihlah satu jawaban yang paling tepat</strong></p>\n<p style="text-align: center;"><strong><img src="../data/kuantitatif/soal 21.JPG" alt="" width="500" height="200" /></strong></p>\n<p style="text-align: left;"><strong>Panjang DC adalah :</strong></p>', '<p>6,75</p>', '<p>13,50</p>', '<p>14,50</p>', '<p>20,25</p>', 'B'),
(74, 'A000000062', '3', '<p><img src="../data/kuantitatif/soal 22.JPG" alt="" width="500" height="200" /></p>\n<p>Sudut ADB adalah :</p>', '<p>5<sup>o</sup></p>', '<p>10<sup>o</sup></p>', '<p>15<sup>o</sup></p>', '<p>20<sup>o</sup></p>', 'B'),
(75, 'A000000063', '3', '<p><img src="../data/kuantitatif/soal 23.JPG" alt="" width="500" height="200" /></p>\n<p>Sudut ADB adalah :</p>', '<p>145<sup>o</sup></p>', '<p>100<sup>o</sup></p>', '<p>60<sup>o</sup></p>', '<p>55<sup>o</sup></p>', 'D'),
(76, 'A000000064', '3', '<p><img src="../data/kuantitatif/soal 24.JPG" alt="" width="500" height="200" /></p>\n<p>Luas segitiga ABC adalah :</p>', '<p>12 cm<sup>2</sup></p>', '<p>16 cm<sup>2</sup></p>', '<p>32 cm<sup>2</sup></p>', '<p>64 cm<sup>2</sup></p>', 'B'),
(77, 'A000000065', '3', '<p><img src="../data/kuantitatif/soal 25.JPG" alt="" width="500" height="200" /></p>\n<p>Panjang DE adalah :</p>', '<p>6 cm</p>', '<p>12 cm</p>', '<p>12,5 cm</p>', '<p>18,5 cm</p>', 'C'),
(78, 'A000000066', '3', '<p><img src="../data/kuantitatif/soal 26.JPG" alt="" width="500" height="200" /></p>\n<p>Dari sudut-sudut yang terbentuk dari gambar diatas yang tidak sama besarnya adalah :</p>', '<p>1 dan 8</p>', '<p>2 dan 3</p>', '<p>5 dan 8</p>', '<p>4 dan 7</p>', 'D'),
(79, 'A000000067', '3', '<p><img src="../data/kuantitatif/soal 27.JPG" alt="" width="500" height="200" /></p>\n<p>Bila&nbsp;tg 37<sup>o</sup> = 0,75, maka panjang AB adalah:</p>', '<p>35,00 cm</p>', '<p>43,00 cm</p>', '<p>45,00 cm</p>', '<p>50,00 cm</p>', 'C'),
(81, 'A000000068', '3', '<p><img src="../data/kuantitatif/soal 28.JPG" alt="" /></p>\n<p>Tabel di atas menunjukan tabel biaya produksi dan harga penjualan dari barang merek X. Keuntungan terbesar dicapai pada kondisi:</p>', '<p>I</p>', '<p>II</p>', '<p>III</p>', '<p>IV</p>', 'D'),
(82, 'A000000069', '3', '<p><img src="../data/kuantitatif/SOAL 29.JPG" alt="" /></p>\n<p>Grafik diatas, menggambarkan pemasukan dan pengeluaran pada sebuah perusahaan. keuntungan tertinggi dicapai pada bulan:</p>', '<p>Maret</p>', '<p>April</p>', '<p>Juni</p>', '<p>Oktober</p>', 'A'),
(83, 'A000000070', '3', '<p><img src="../data/kuantitatif/soal 30.JPG" alt="" /></p>\n<p>Luas daerah yang diarsir adalah :</p>', '<p>2,5 cm<sup>2</sup></p>', '<p>5,0 cm<sup>2</sup></p>', '<p>7,5 cm<sup>2</sup></p>', '<p>8,0 cm<sup>2</sup></p>', 'C'),
(84, 'A000000071', '3', '<p style="text-align: center;"><strong>Petunjuk&nbsp; soal 31-40: Pilihlah satu jawaban yang paling tepat</strong></p>\n<p><strong>&nbsp;</strong></p>\n<p>Luas daerah parkir 176 m<sup>2</sup>, luas rata-rata untuk mobil sedan 4 m<sup>2, </sup>dan bis 20 m<sup>2</sup>. Daya muat maksimum hanya 20 kendaraan, biaya parkir untuk sedan Rp. 100/jam dan bis Rp. 200/jam. Jika dalam satu jam tidak ada kendaraan yang pergi dan datang, maka hasil maksimum tempat parkir itu adalah:</p>', '<p>Rp. 2000</p>', '<p>Rp. 2600</p>', '<p>Rp. 3000</p>', '<p>Rp. 4000</p>', 'B'),
(85, 'A000000072', '3', '<p>Populasi gajah di Lampung pada tahun 1980 sebanyak 3417 ekor dan pada tahun 1990 sebanyak 2956 ekor. Maka presentase penurunan populasi gajah dari tahun 1980 &ndash; 1990 kira-kira adalah:</p>', '<p>16%</p>', '<p style="text-align: left;">14%</p>', '<p>13,5%</p>', '<p>1,5%</p>', 'C'),
(86, 'A000000073', '3', '<p>Dua kandang berdampingan masing-masing dengan ukuran X m dan Y m, dan luasnya 12 m<sup>2</sup>. Agar panjang pagar yang diperlukan sesedikit mungkin, maka panjang X dan Y berturut-turut adalah:</p>\n<p><img src="../data/kuantitatif/soal 33.JPG" alt="" /></p>', '<p>2 m dan 6 m</p>', '<p>3 m dan 4 m</p>', '<p>4 m dan 3 m</p>', '<p>6 m dan 2 m</p>', 'B'),
(87, 'A000000074', '3', '<p>Dalam penentuan nilai pajak untuk rumah, setiap nilai Rp. 1000,- dikenakan pajak Rp. 1,5,-. Pajak ditetapkan dari 2/3 nilai rumah. Jika seseorang memiliki rumah seharga Rp. 21.000.000,-, berapa nilai pajaknya?</p>', '<p>Rp. 14.000,-</p>', '<p>Rp. 21.000,-</p>', '<p>Rp. 28.000,-</p>', '<p>Rp. 42.000,-</p>', 'B'),
(88, 'A000000075', '3', '<p>Upah harian seorang tukang Rp. 2500,- lebih besar dari pada pembantu tukang. Seseorang membayar Rp. 52.500,- pada seorang tukang dan seorang pembantu tukang yang talah bekerja selama tiga hari kepadanya. Besar upah pembantu tukang untuk setiap harinya adalah:</p>', '<p>Rp. 5000,-</p>', '<p>Rp. 7500,-</p>', '<p>Rp. 10.000,-</p>', '<p>Rp. 12.500,-</p>', 'B'),
(89, 'A000000076', '3', '<p>Pada tahun 1980 usia Budi sama dengan usia Bahar pada tahun 1985. Selisih usia Budi dan Bahar pada tahun 1995 adalah:</p>', '<p>5 tahun</p>', '<p>10 tahun</p>', '<p>15 tahun</p>', '<p>20 tahun</p>', 'A'),
(90, 'A000000077', '3', '<p>Suatu persegi panjang mempunyai panjang 4 cm lebih panjang dari lebarnya. Jika kelilingnya 28, luas persegi panjang tersebut adalah:</p>', '<p>14 cm<sup>2</sup></p>', '<p>18 cm<sup>2</sup></p>', '<p>32 cm<sup>2</sup></p>', '<p>45 cm<sup>2</sup></p>', 'D'),
(91, 'A000000078', '3', '<p>Seorang teknisi membayar Rp. 5100,- untuk pembelian 0,5 kg kaporit dan 1 kg tawas. Pada hari berikutnya teknisi tersebut datang lagi ke toko yang sama dan membayar Rp. 5700 untuk pembelian 1 kg kaporit dan 0,5 kg tawas. Harga 1 kg tawas adalah:</p>', '<p>Rp. 1350,-</p>', '<p>Rp. 2150,-</p>', '<p>Rp. 2600,-</p>', '<p>Rp. 3800,-</p>', 'D'),
(92, 'A000000079', '3', '<p>Dari 300 orang penduduk di suatu desa, 110 orang sebagai pemilik sawah, 130 orang sebagai penggarap sawah, dan 100 orang bukan pemilik maupun penggarap sawah. Berapa orang yang sebagai pemilik dan penggarap sawah?</p>', '<p>240</p>', '<p>200</p>', '<p>40</p>', '<p>20</p>', 'C'),
(93, 'A000000080', '3', '<p>Bila roda pertama berputar 9 kali, maka roda kedua berputar 29 kali. Bila roda kedua berputar 174 kali, berarti roda pertama berputar:</p>', '<p>40 kali</p>', '<p>45 kali</p>', '<p>54 kali</p>', '<p>63 kali</p>', 'C'),
(94, 'A000000081', '5', '<p style="text-align: center;"><strong>Bagian III : Analitik</strong></p>\n<p style="text-align: center;"><strong>Petunjuk soal 1-20 :&nbsp; Pilihlah satu kalimat atau satu jawaban yang paling tepat untuk pernyataan atau persoalan yang diberikan.</strong></p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: left;">Semua bunga melati berwarna putih. Bunga A berwarna merah. Kesimpulan yang dapat diambil adalah:</p>', '<p>Bunga A termasuk bunga melati</p>', '<p>Bunga A mungkin bunga melati</p>', '<p>Bunga A bukan bunga melati</p>', '<p>Bunga A termasuk bunga mawar</p>', 'C'),
(95, 'A000000082', '5', '<p>Daging sapi lebih mahal daripada daging kambing. Daging kambing lebih mahal daripada daging ayam. Hati sapi lebih mahal daripada daging ayam. Kesimpulan yang dapat diambil adalah:</p>', '<p>Hati sapi lebih mahal daripada daging kambing</p>', '<p>Hati ayam lebih mahal daripada hati kambing</p>', '<p>Hati kambing lebih mahal daripada hati ayam</p>', '<p>Hati kambing lebih mahal daripada hati sapi</p>', 'C'),
(96, 'A000000083', '5', '<p>Uang Deni dua kali lebih banyak daripada uang Rano. Uang Bayu tiga kali lebih banyak daripada uang Dewi. Uang Alex sama dengan uang Rano dan Dewi digabungkan. Uang Deni sama dengan dua kali uang Rano ditambah setengah kali uang Dewi. Siapakah yang mempunyai uang paling banyak?</p>', '<p>Alex</p>', '<p>Bayu</p>', '<p>Deni</p>', '<p>Dewi</p>', 'B'),
(97, 'A000000084', '5', '<p>Buah-buahan berikut mengandung vitamin C dengan kadar berbeda-beda. Kandungan vitamin C pada Nanas sedikit lebih banyak daripada Mangga. Jeruk lebih banyak daripada Nanas. Mangga lebih banyak daripada Sirsak. Markisa lebih banyak daripada Nanas. Buah apa yang kadar vitamin C-nya sedang?</p>', '<p>Jeruk</p>', '<p>Mangga</p>', '<p>Markisa</p>', '<p>Nanas</p>', 'D'),
(98, 'A000000085', '5', '<p>Tikus sangat sukar untuk dibasmi. Tikus dapat dikendalikan jumlahnya. Pengendalian dapat dilakukan dengan cara biologis, kimia, fisik dan sanitasi lingkungan. Pengendaliannya hanya dapat dilakukan secara terpadu. Pernyataan di bawah ini yang benar adalah:</p>', '<p>Tikus dapat dibasmi sampai habis</p>', '<p>Tikus tidak dapat diatur jumlahnya</p>', '<p>Cara biologis adalah cara pengendalian paling baik</p>', '<p>Pengurangan jumlah tikus harus dilakukan dengan dua cara atau lebih</p>', 'D'),
(99, 'A000000086', '5', '<p>Lulusan SMU semua jurusan boleh ikut ujian masuk fakultas pertanian. Sebagian besar yang lulus ujian masuk fakultas pertanian berasal dari jurusan IPA. Tini adalah lulusan SMU jurusan IPS. Kesimpulan yang dapat diambil adalah:</p>', '<p>Mungkin Tini diterima di fakultas ekonomi</p>', '<p>Mungkin Tini diterima di fakultas pertanian</p>', '<p>Mungkin Tini diterima di fakultas pertanian</p>', '<p>Tidak mungkin Tini diterima di fakultas ekonomi</p>', 'B'),
(100, 'A000000087', '5', '<p>Pejabat yang baik bersidat jujur dalam melaksanakan tugasnya. Orang yang jujur belum tentu pejabat. Paimin bekerja di instansi X. Kesimpulan yang dapat diambil adalah:</p>', '<p>Paimin bersifat jujur dalam bekerja</p>', '<p>Instansi X mempunyai pegawai yang jujur</p>', '<p>Paimin bukan pegawai jujur</p>', '<p>Paimin mungkin bukan pejabat yang jujur</p>', 'D'),
(101, 'A000000088', '5', '<p>Oni lebih suka bermain catur daripada Pino dan Roni. Puji lebih suka bermain catur daripada Oni. Rudi lebih suka bermain catur daripada Roni. Siapa di antara mereka yang paling suka bermain catur?</p>', '<p>Oni</p>', '<p>Pino</p>', '<p>Puji</p>', '<p>Roni</p>', 'C'),
(102, 'A000000089', '5', '<p>Anak laki-laki yang paling kecil biasanya dibelikan mobil mainan oleh ibunya. Kristian adalah anak yang mempunya banyak mobil mainan. Kakak-kakak Kristian tidak mempunyai mobil mainan. Kesimpulan yang dapat di ambil adalah:</p>', '<p>Semua mainan Kristian dibelikan ibunya</p>', '<p>Kakak Kristian memberikan mobil mainannya kepada Kristian</p>', '<p>Kakak Kristian semua perempuan</p>', '<p>Kakak Kristian tidak suka mobil mainan</p>', 'C'),
(103, 'A000000090', '5', '<p>Tia lebih suka jeruk daripada apel. Tino lebih suka semangka daripada jeruk. Leo kurang suka semangka daripada melon. Dion suka semangka dan jeruk. Harga semangka lebih murah daripada harga melon, tetapi lebih mahal daripada jeruk. Siapakah di antara keempat anak itu yang menyukai buah dengan harga paling mahal.</p>', '<p>Dion</p>', '<p>Leo</p>', '<p>Tia</p>', '<p>Tino</p>', 'B'),
(104, 'A000000091', '5', '<p>Tidak semua lulusan SMU yang pandai lulus ujian masuk perguruan tinggi. Semua lulusan SMU yang bodoh, tidak lulus ujian masuk perguruan tinggi. Tidak semua siswa SMU yang pandai selalu mempunyai nilai ijazah SMU yang lebih baik daripada siswa yang lebih bodoh. Toto mempunyai nilai ijazah SMU yang lebih buruk dari Tono. Kesimpulan yang dapat diambil adalah:</p>', '<p>Tono lebih pandai dari pada Toto</p>', '<p>Tidak mungkin Toto lulus masuk ujian perguruan tinggi</p>', '<p>Mungkin Toto dan Tono akan lulus ujian masuk perguruan tinggi</p>', '<p>Tidak mungkin Tono gagal ujian masuk perguruan tinggi</p>', 'C'),
(105, 'A000000092', '5', '<p>Sinta lebih suka pelajaran Ekonomi daripada Kimia, tetapi kurang suka pelajaran Matematika. Sinta tidak suka pelajaran Bahasa Inggris dan Fisika. Kesimpulan yang dapat diambil adalah:</p>', '<p>Sinta lebih suka pelajaran Kimia daripada Ekonomi</p>', '<p>Sinta kurang suka pelajaran Sejarah daripada Matematika</p>', '<p>Sinta lebih suka pelajaran Kimia daripada Matematika</p>', '<p>Sinta kurang suka pelajaran Fisika daripada Ekonomi</p>', 'D'),
(106, 'A000000093', '5', '<p>Telah dilaksanakan jajak pendapat terhadap 15 calon mahasiswa (diberi nomor 15). Nomor 1,3,4,5,6,8,13 menyatakan SPP yang murah. Nomor 1,2,3,5,6,7,12,13,4 menyatakan tidak perlu ada biaya tambahan di luar SPP. Nomor 3,5,6,8,11,13,14 menyatakan tanpa uang gedung. Siapakah yang tidak menginginkan SPP murah, tanpa biaya tambahan dan tanpa uang gedung?</p>', '<p>1,2,4,7,9,10,11,12,14,15</p>', '<p>3,5,6,8,11,13,14</p>', '<p>1,3,6,7,8,11,13,14</p>', '<p>1,2,4,7,,11,14,15</p>', 'A'),
(107, 'A000000094', '5', '<p>Penyakit dapat menyerang orang dewasa, anak-anak, laki-laki dan perempuan. Seorang ahli sedang meneliti pada penderita penyakit X di sebuah Rumah Sakit, dan ternyata banyak penderita penyakit X adalah anak-anak. Sebagian besar dari mereka adalah perempuan. Kesimpulan yang dapat diambil adalah:</p>', '<p>Semua penderita penyakit X adalah perempuan</p>', '<p>Semua penderita penyakit X adalah anak-anak</p>', '<p>Sedikit sekali penderita penyakit X adalah orang dewasa</p>', '<p>Sedikit sekali penderita penyakit X adalah orang dewasa dan anak laki-laki</p>', 'D'),
(108, 'A000000095', '5', '<p>Seorang ayah bergolongan darah A dan ibu bergolongan darah B. Presentase anak yang mempunyai golongan darah AB adalah:</p>', '<p>25%</p>', '<p>50%</p>', '<p>75%</p>', '<p>100%</p>', 'B'),
(109, 'A000000096', '5', '<p>Kebanyakan mobil yang dijual di toko Makmur adalah mobil sedan. Kebanyakan orang kaya di Kota J membeli mobil sedan. Hari Senin yang lalu Iwan membeli mobil. Iwan adalah anak orang kaya di kota J. Toko Makmur adalah langganan orang kaya. Kesimpulan yang dapat diambil adalah:</p>', '<p>Iwan membeli mobil di toko Makmur</p>', '<p>Iwan adalah pelanggan toko Makmur</p>', '<p>Mobil yang dibeli Iwan adalah sedan</p>', '<p>Iwan membeli sedan di toko Makmur</p>', 'D'),
(110, 'A000000097', '5', '<p>Semua mahasiswa suka membaca. Yuyun adalah mahasiswa. Kesimpulan yang dapat diambil adalah:</p>', '<p>Yuyun belum tentu suka membaca</p>', '<p>Yuyun mungkin tidak suka membaca</p>', '<p>Yuyun harus suka membaca</p>', '<p>Yuyun suka membaca</p>', 'D'),
(111, 'A000000098', '5', '<p>Sri membeli minyak goreng dua kali lebih banyak dari Sari. Santi membeli minyak goreng tiga kali lebih banyak dari Sari. Sinta membeli minyak goreng setengah dari Sri. Siapakah yang membeli minyak goreng paling banyak?</p>', '<p>Santi</p>', '<p>Sari</p>', '<p>Sita</p>', '<p>Sri</p>', 'A'),
(112, 'A000000099', '5', '<p>Tina, Totok dan Tatik menyukai pelajaran Matematika. Tuti, Tari, Tono dan Totok menyukai pelajaran Ekonomi tetapi kurang menyukai pelajaran Sejarah. Tina, Tono dan Titi lebih suka pelajaran Kimia dibanding bahasa Inggris. Siapakah yang suka pelajaran Matematika, tetapi tidak suka pelajaran Bahasa Inggris?</p>', '<p>Tina</p>', '<p>Titi</p>', '<p>Tono</p>', '<p>Totok</p>', 'A'),
(113, 'A000000100', '5', '<p>Orang yang sudah tua mudah lupa. Ada beberapa orang yang sudah tua tidak mudah lupa. Mereka minum obat yang berasal dari tanaman X. Tanaman X dapat menghambat proses yang menyebabkan seseorang menjadi pelupa. Pernyataan di bawah ini yang benar adalah:</p>', '<p>Semua orang yang sudah tua pasti pelupa</p>', '<p>Gangguan mudah lupa dapat dihilangkan</p>', '<p>Gangguan mudah lupa hanya dapat di hambat prosesnya</p>', '<p>Tanaman X dapat menghilangkan gangguan mudah lupa</p>', 'D'),
(114, 'A000000101', '5', '<p><strong>Petunjuk soal 21-30&nbsp;&nbsp; : dalam tiap-tiap soal di bawah ini didahului oleh suatu naskah&nbsp;&nbsp; atau bacaan singkat. Bacalah baik-baik dan pahami dahulu naskah tersebut, kemudian pilihlah satu jawaban yang paling tepat atau paling sesuai dengan isi naskah.</strong></p>\n<p><strong>Bacaan untuk soal 21-22</strong></p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Supermarket A menawarkan diskon untuk pembelian beberapa barang dengan ketentuan sebagai berikut:</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Setiap belanja sevesar RP 10.000 atau kelipatannya mendapat satu angka</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Satu angka sama nilainya dengan diskon sebesar 2% dari harga barang</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Panci serba guna dapat dibeli dengan diskon 15%</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kipas angin meja dapat dibeli dengan diskon 25%</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Seterika listrik dapat dibeli dengan diskon 30%</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Radio tape dapat dibeli dengan diskon 35%</p>\n<p>&nbsp;</p>\n<p>Bila Ibu Santi sudah mengumpulkan angka sebesar 10 angka, barang apa yang dapat dibelinya dengan ketentuan diskon di atas?</p>', '<p>Panci serba guna</p>', '<p>Kipas angin meja</p>', '<p>Seterika listrik</p>', '<p>Radio tape</p>', 'A'),
(115, 'A000000102', '5', '<p>Bila Ibu Teresia berbelanja sebesar Rp 165.000, maka barang yang dapat dibeli dengan ketentuan diskon di atasadalah:</p>', '<p>Panci serba guna</p>', '<p>Kipas angin meja</p>', '<p>Seterika listrik</p>', '<p>Radio tape</p>', 'C'),
(116, 'A000000103', '5', '<p><strong>Bacaan untuk soal 23-25</strong></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kucing berbulu hitam diketahui mempunya pasangan kode genetik (HH), kucing berbulu putih (hh), coklat (h-) dan belang tiga (Hh).</p>\n<p>&nbsp;</p>\n<p>Persilangan kucing berbulu hitam dengan kucing berbulu coklat akan menghasilkan kucing berbulu:</p>', '<p>Hitam</p>', '<p>Hitam dan coklat</p>', '<p>Hitam, putih dan coklat</p>', '<p>Hitam dan belang tiga</p>', 'D'),
(117, 'A000000104', '5', '<p>Untuk menghasilkan kucing belang tiga seluruhnya, dapat disilangkan kucing:</p>', '<p>Hitam dengan putih</p>', '<p>Hitam dengan coklat</p>', '<p>Hitam dengan belang tiga</p>', '<p>Coklat dengan belang tiga</p>', 'A'),
(118, 'A000000105', '5', '<p>Untuk dapat menghasilkan 25% kucing berbulu hitam, 25% kucing berbulu putih, 25% kucing berbulu coklat dan 25% kucing berbulu belang tiga, dapat disilangkan kucing:</p>', '<p>Hitam dengan putih</p>', '<p>Hitam dengan coklat</p>', '<p>Hitam dengan belang tiga</p>', '<p>Coklat dengan belang tiga</p>', 'D'),
(119, 'A000000106', '5', '<p><strong>Bacaan untuk soal 26-27</strong></p>\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Sebuah bang mempunyai empat orang satpam, yaitu K, L, M, dan N. Setiap hari ada dua <em>shift</em> jam kerja yaitu pagi dan sore. Setiap jam kerja ada dua orang yang bertugas berpasangan secara bergantian. Pasangan ini selalu ditukar, sehingga semua pernah bertugas berpasangan. Kombinasi pasangan ini diulang lagi dengan urutan yang sama.</p>\n<p>Berapakah kombinasi pasangan yang mungkin terjadi?</p>', '<p>4</p>', '<p>6</p>', '<p>8</p>', '<p>10</p>', 'B'),
(120, 'A000000107', '5', '<p>Urutan yang mungkin terjadi dari pasangan K adalah:</p>', '<p>L, N, M, L , M, N</p>', '<p>M, L, N, L, N, M</p>', '<p>M, N, L, M, N, L</p>', '<p>N, L, M, N, M, L</p>', 'C'),
(121, 'A000000108', '5', '<p><strong>Bacaan untuk soal 28-30</strong></p>\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Suatu komisi yang beranggotakan lima orang sedang dibentuk untuk mengatasi masalah perselisihan antara pekerja dan pihak perusahaan. Komisi tersusun atas wakil perusahaan yeang terdiri atas dua orang, wakil dari pekerja juga terdiri atas dua orang, dan penengah yang ahli dibidang ketenagakerjaan.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wakil perusahaan harus dipilih di antara E, F, dan G.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wakil pekerja harus dipilih di antara H, I, dan J.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wakil penengah harus dipilih K atau L.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H tidak dapat bekerja sama dengan J.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G tidak dapat bekerja sama dengan H.</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; F tidak dapat bekerja tanpa L.</p>\n<p>&nbsp;</p>\n<p>Dari daftar orang-orang berikut, manakah yang dapat bekerja dalam komisi?</p>', '<p>K, E, F, I, J.</p>', '<p>K, F, G, I, J.</p>', '<p>L, E, F, H, I.</p>', '<p>L, E, F, H, J.</p>', 'C'),
(122, 'A000000109', '5', '<p>Siapakah dari empat orang berikut yang dapat dipilih untuk bekerja dalam komisi bila J dipilih?</p>', '<p>E, F, H, I.</p>', '<p>E, F, I, K.</p>', '<p>E, G, H, I.</p>', '<p>E, G, I, L.</p>', 'D'),
(123, 'A000000110', '5', '<p>Bila K harus dipilih untuk bekerja dalam komisi, siapakah yang tidak dapat dipilih untuk bekerja dalam komisi?</p>', '<p>E</p>', '<p>F</p>', '<p>G</p>', '<p>H</p>', 'B'),
(124, 'A000000111', '5', '<p><strong>Petunjuk : </strong>Tiap soal terdiri dari dua deret kotak yang berisi tujuh gambar. Ketujuh gambar ini merupakan suatu rangkaian yang telah tersusun menurut pedoman tertentu. Tentukan gambar kedelapan dengan cara memilih salah satu dari pilihan gambar yang tersedia di sebelah kanan.</p>\n<p><img src="../data/analitik/soal 31.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawab_31/A.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawab_31/B.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawab_31/C.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawab_31/D.JPG" alt="" /></p>', 'B'),
(125, 'A000000112', '5', '<p><img src="../data/analitik/soal 32.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_32/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_32/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_32/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_32/d.JPG" alt="" /></p>', 'C'),
(126, 'A000000113', '5', '<p><img src="../data/analitik/soal 33.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_33/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_33/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_33/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_33/d.JPG" alt="" /></p>', 'D'),
(127, 'A000000114', '5', '<p><img src="../data/analitik/soal 34.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_34/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_34/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_34/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_34/d.JPG" alt="" /></p>', 'C'),
(128, 'A000000115', '5', '<p><img src="../data/analitik/soal 35.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_35/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_35/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_35/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_35/d.JPG" alt="" /></p>', 'C'),
(129, 'A000000116', '5', '<p><strong>Soal 36-40 : Tentukan gambar untuk kotak yang masih kosong dengan cara memilih satu dari pilihan gambar yang tersedia di sebelah kanan. </strong></p>\n<p><strong><img src="../data/analitik/soal 36.JPG" alt="" /></strong></p>', '<p><img src="../data/analitik/jawaban_36/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_36/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_36/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_36/d.JPG" alt="" /></p>', 'A'),
(130, 'A000000117', '5', '<p><img src="../data/analitik/soal 37.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_37/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_37/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_37/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_37/d.JPG" alt="" /></p>', 'B'),
(131, 'A000000118', '5', '<p><img src="../data/analitik/soal 38.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_38/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_38/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_38/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_38/d.JPG" alt="" /></p>', 'B'),
(132, 'A000000119', '5', '<p><img src="../data/analitik/soal 39.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_39/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_39/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_39/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_39/d.JPG" alt="" /></p>', 'C'),
(133, 'A000000120', '5', '<p><img src="../data/analitik/soal 40.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_40/a.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_40/b.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_40/c.JPG" alt="" /></p>', '<p><img src="../data/analitik/jawaban_40/d.JPG" alt="" /></p>', 'A'),
(135, 'A000000121', '7', '<p>sfsdfsd</p>', '<p>dfsdfdvsdvcx</p>', '<p>rwwrgg</p>', '<p>weewfsdfsd</p>', '<p>dvvcxvxvcv</p>', 'A'),
(136, 'A000000122', '7', '<p>ssdv dsfsdfdfdsfsdf</p>', '<p>vvxcverg ddfv</p>', '<p>fwefwfvdf dvdfvwfwe</p>', '<p>ewfv ffdfbfdv dfvfv</p>', '<p>sdfdsvsvds</p>', 'B'),
(137, 'A000000123', '7', '<p>efwfcx dfbgbtrhthf fgsddsf</p>', '<p>wefwefwefew</p>', '<p>fsczcxc</p>', '<p>23sdfdsfd</p>', '<p>dsfsdfdf</p>', 'C'),
(138, 'A000000124', '7', '<p>v cbghm</p>', '<p>ghhgmjm</p>', '<p>trjyh</p>', '<p>hnhfg</p>', '<p>ghnfgnh</p>', 'D'),
(139, 'A000000125', '7', '<p>fggnhn gnhgn</p>', '<p>hgfnhn</p>', '<p>tyjghnfghnf</p>', '<p>jtyghnhg</p>', '<p>ghnghngh</p>', 'A'),
(140, 'A000000126', '8', '<p>fsdff</p>', '<p>dfsdfds</p>', '<p>fsfdf</p>', '<p>dfsdfdf</p>', '<p>fsdfdsf</p>', 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_ujian`
--

CREATE TABLE `status_ujian` (
  `id` int(5) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_ujian`
--

INSERT INTO `status_ujian` (`id`, `status`, `ket`) VALUES
(1, '1', 'sudah ujian'),
(2, '2', 'belum ujian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(10) NOT NULL,
  `id_userk` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text,
  `status` varchar(4) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id`, `id_userk`, `nama`, `isi`, `status`) VALUES
(1, 'U000000007', NULL, '<p>Semoga Lulus Ya Allah Aamiin&nbsp;<img src="../addon/tinymce/plugins/emoticons/img/smiley-cool.gif" alt="cool" /></p>', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujianku`
--

CREATE TABLE `ujianku` (
  `id` int(10) NOT NULL,
  `nama_ujian` varchar(200) DEFAULT NULL,
  `id_matkul` varchar(20) DEFAULT NULL,
  `jsoal` int(20) DEFAULT NULL,
  `penilaian` int(20) DEFAULT NULL,
  `kkm` int(20) DEFAULT NULL,
  `waktu` varchar(30) DEFAULT NULL,
  `aktif` varchar(20) DEFAULT NULL,
  `mode_soal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujianku`
--

INSERT INTO `ujianku` (`id`, `nama_ujian`, `id_matkul`, `jsoal`, `penilaian`, `kkm`, `waktu`, `aktif`, `mode_soal`) VALUES
(2, '1', '1', 40, 100, 60, '2400', '2', '2'),
(3, '2', '1', 40, 100, 60, '2400', '2', '2'),
(5, '3', '1', 40, 1000, 60, '2400', '2', '2'),
(7, '5', '1', 5, 100, 50, '2400', '1', '2'),
(8, '6', '1', 1, 100, 50, '2400', '1', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `id_user` int(20) NOT NULL,
  `firstn` varchar(100) NOT NULL,
  `lastn` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nomerhp` varchar(30) NOT NULL,
  `dp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `id_user`, `firstn`, `lastn`, `username`, `password`, `email`, `nomerhp`, `dp`) VALUES
(2, 1, 'Ahmad', 'Subadri', 'ahmad11', 'd1fbfb7c10e2a58edc975a60512b7c11', 'ahmadsubadri08@gmail', '085268929843', '0091c825e9b510df264c8d62fce55269.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usergarap`
--

CREATE TABLE `usergarap` (
  `id` int(5) NOT NULL,
  `id_userk` varchar(20) NOT NULL,
  `firstn` varchar(100) NOT NULL,
  `lastn` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usergarap`
--

INSERT INTO `usergarap` (`id`, `id_userk`, `firstn`, `lastn`, `username`, `password`, `email`, `dp`) VALUES
(15, 'U000000007', 'Avatar', 'Aang', 'avataraang', 'd1fbfb7c10e2a58edc975a60512b7c11', 'avatar@gmail.com', 'E.jpg'),
(16, 'U000000008', 'YOSI ADE', ' PRATAMA PUTRA', '20120001', '468b3ac3c915feaab828dd7a01c148f7', 'yoshimatsuokada@yahoo.com', ''),
(17, 'U000000009', 'SISKA YENA', ' ULI MANURUNG', '20120002', '72ecb4bab9d2193464f84bfa677bf582', 'siskayena@gmail.com', ''),
(18, 'U000000010', 'SUPRI', 'YANTO', '20120003', '51a05976737901b974325294d669201c', 'supriyanto@gmai.com', ''),
(19, 'U000000011', 'EKO', 'BUDISUSANTO', '20120004', '561b840f1f52458fdac74940a03c7358', 'ekobudisusanto@gmail.com', ''),
(20, 'U000000012', 'Mut', 'mainah', '20120005', 'cbbcec366675ea24ec0f4caa8689a068', 'naimar0509@gmail.com', ''),
(21, 'U000000013', 'KRISNA SURYA', 'PRABOWO', '20120006', '633397299885e4d1330578890e8df81e', 'krisna.surya.prabowo83@gmail.com', ''),
(22, 'U000000014', 'MIFTAKHUL', 'MUNIR', '20120007', 'fc46b4e31e5c3642878d35d5d60742a0', 'munirnawawi73@gmail.com', ''),
(23, 'U000000015', 'MARIA YUNITA', 'SERLINA JEBAGUT', '20120008', 'b77c22914b848bbe0ede5ecc3de06716', 'Mariayunitaserlinajebagut@gmail.com', ''),
(24, 'U000000016', 'WAHYU PUTRA', ' DWI PAMUNGKAS', '20120009', '53b835698ec653da1cc544bb8a22a174', 'wahyuputra@gmail.com', ''),
(25, 'U000000017', 'PUSPITA PERMATA', 'SARI', '20120010', '0fe0fc3f7bb1bf04e3de897008463d5b', 'puspitapermatasari@gmail.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id` int(10) NOT NULL,
  `detik` varchar(100) NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu`
--

INSERT INTO `waktu` (`id`, `detik`, `waktu`) VALUES
(1, '2400', '40 menit'),
(2, '3600', '1 jam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktif`
--
ALTER TABLE `aktif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_post`
--
ALTER TABLE `cat_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dujian`
--
ALTER TABLE `dujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_jwb`
--
ALTER TABLE `hasil_jwb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_ujian`
--
ALTER TABLE `status_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujianku`
--
ALTER TABLE `ujianku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergarap`
--
ALTER TABLE `usergarap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktif`
--
ALTER TABLE `aktif`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cat_post`
--
ALTER TABLE `cat_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dujian`
--
ALTER TABLE `dujian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hasil_jwb`
--
ALTER TABLE `hasil_jwb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matkul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mode`
--
ALTER TABLE `mode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `status_ujian`
--
ALTER TABLE `status_ujian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ujianku`
--
ALTER TABLE `ujianku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usergarap`
--
ALTER TABLE `usergarap`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
