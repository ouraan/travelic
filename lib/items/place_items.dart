class PlaceItems {
  String name;
  String location;
  String openDays;
  String openTimes;
  String like;
  String description;
  String imageCover;
  List<String> imageDetails;

  PlaceItems({
    required this.name,
    required this.location,
    required this.openDays,
    required this.openTimes,
    required this.like,
    required this.description,
    required this.imageCover,
    required this.imageDetails,
  });
}

var placeItemsList = [
  PlaceItems(
    name: "Flora Wisata San Terra",
    location: "Jurangrejo, Pandesari, Pujon, Malang",
    openDays: "Setiap hari",
    openTimes: "08.00 - 17.00",
    like: "277",
    description:
        "Flora Wisata San Terra didirikan pada tahun 2019. Flora Wisata San Terra dibangun dengan konsep taman bunga, spot foto instagramable, wahana permainan dan kuliner ala garden. \n\nWisata ini sangat cocok untuk segala usia dari anak, remaja, dewasa, maupun lansia. Terdapat ratusan jenis tanaman bunga hias, juga melayani penjualan tanaman bunga hias dalam pot. Wisata yang berdiri diatas tanah dengan luas 5 hektar ini mulai dibuka pukul 08.00-17.00 WIB. \n\nHarga Tiket Masuk (HTM) sangat terjangkau yaitu Weekday 25.000 dan Weekend/Libur Nasional 30.000 per orang. Dengan biaya tiket yang terjangkau sudah dapat menikmati semua spot foto tanpa berbayar lagi, kecuali untuk wahana permainan akan dikenai tiket bermain. \n\nFlora Wisata San Terra juga terdapat Gedung serbaguna yang dapat digunakan untuk acara gathering, rapat, wedding, dan prewedding.",
    imageCover: "assets/images/san-terra.jpg",
    imageDetails: [
      "assets/images/san-terra-gallery-1.jpg",
      "assets/images/san-terra-gallery-2.png",
      "assets/images/san-terra-gallery-3.jpg",
    ],
  ),
  PlaceItems(
    name: "Taman Langit Gunung Banyak",
    location: "Jl. Gn. Banyak, Gunungsari, Kec. Bumiaji, Kota Batu",
    openDays: "Setiap hari",
    openTimes: "07.00 - 12.00",
    like: "2741",
    description:
        "Taman Langit berada di kawasan Gunung Banyak dengan ketinggian sekitar 1.315 meter diatas permukaan laut. Lokasi nya tidak terlalu jauh dari tempat wisata Paralayang Batu yang sudah sangat terkenal di kalangan wisatawan. Tempat ini sangat cocok untuk Anda yang ingin menikmati keindahan alam dan senang berfoto. \n\nMeskipun relatif baru, Taman Langit berhasil menarik banyak perhatian pengunjung berkat spot foto menarik yang dimilikinya. Pemandangan indah dari ketinggian menjadi latar belakang utama foto-foto yang akan Anda dapatkan. Ditemani hawa sejuk dan dingin ala pegunungan akan membuat Anda betah berlama-lama bermain di Taman Langit.",
    imageCover: "assets/images/taman-langit.jpg",
    imageDetails: [
      "assets/images/taman-langit-gallery-1.jpg",
      "assets/images/taman-langit-gallery-2.jpg",
      "assets/images/taman-langit-gallery-3.jpg",
    ],
  ),
  PlaceItems(
    name: "Batu Night Spectacular",
    location: "Jl. Hayam Wuruk No.1, Oro-Oro Ombo, Kec. Batu, Kota Batu",
    openDays: "Setiap hari",
    openTimes: "15.00 - 22.00",
    like: "3703",
    description:
        "Batu Night Spectacular (BNS) masih termasuk ke dalam Jatim Park Group bersama dengan Jatim Park 3, Museum Angkut, dan lainnya. Dengan konsep seperti pasar malam, BNS menjadi tempat rekreasi keluarga yang menarik untuk dikunjungi. Tempat wisata di Malang ini diresmikan pada tanggal 30 November 2008 dan dibangun pada lahan seluas 3 hektar di atas bukit. Berada di ketinggian membuat pemandangan Kota Batu di malam hari bisa terlihat jelas dan indah. \n\nDilahan seluas itu, BNS terbagi menjadi 4 area yakni area carnival, area anak, area extreme, dan area food court. Terdapat lebih dari 35 wahana permainan dan atraksi yang bisa Anda nikmati saat berkunjung ke Batu Night Spectacular. Pengunjung yang datang bisa mendapatkan hiburan menyenangkan dari wahana, pertunjukan, dan pemandangan yang tersaji. Tempat wisata keluarga ini sangat pas untuk menghilangkan penat dan lelah bekerja di siang hari.",
    imageCover: "assets/images/bns.jpg",
    imageDetails: [
      "assets/images/bns-gallery-1.jpg",
      "assets/images/bns-gallery-2.jpg",
      "assets/images/bns-gallery-3.jpg",
    ],
  ),
  PlaceItems(
      name: "Lanskap Brakseng",
      location: "Kawasan Brakseng, Sumber Brantas, Kec. Bumiaji, Kota Batu",
      openDays: "Setiap hari",
      openTimes: "06.00 - 17.00",
      like: "1902",
      description:
          "Lanskap Brakseng merupakan daerah pertanian tertinggi di Kota Batu, Jawa Timur. Berada di ketinggian 1700 mdpl, daerah ini kental dengan nuansa sejuk dan asri dipandang mata. Brakseng menjadi destinasi wisata yang menarik untuk menikmati keindahan Kota Batu dari ketinggian. \n\nBrakseng terletak di Desa Sumber Brantas, Kecamatan Bumiaji. Selain jalan kaki, Lanskap Basreng juga bisa dinikmati menggunakan mobil jeep, motor trail, maupun sepeda. Tipe jalan menuju lahan pertanian ini naik-turun sehingga cukup menantang adrenalin. Hanya saja menuju Lanskap Basreng dengan berjalan kaki dari pemukiman penduduk di Desa Sumber Brantas perlu menjadi pertimbangan tersendiri. Dari Desa Sumber Brantas, pengunjung bisa menjumpai sayur-sayuran yang ditanam di pekarangan rumah warga. Sayur-sayuran itu juga tampak segar dan menggiurkan. Selain itu, banyak spot foto menarik yang bisa dijumpai ketika berjalan kaki.",
      imageCover: "assets/images/brakseng.jpg",
      imageDetails: [
        "assets/images/brakseng-gallery-1.jpg",
        "assets/images/brakseng-gallery-2.jpg",
        "assets/images/brakseng-gallery-3.jpg",
      ]),
  PlaceItems(
      name: "Eco Green Park             ",
      location: "Jl. Oro-Oro Ombo No.9A, Sisir, Kec. Batu, Kota Batu",
      openDays: "Setiap hari",
      openTimes: "08.30 - 16.00",
      like: "2183",
      description:
          "Eco Green Park merupakan bagian dari Jatim Park Group bersama dengan Jatim Park 3, Museum Angkut, dan Batu Night Spectacular. Burung dan juga teknologi ramah lingkungan menjadi tema atraksi utama dari Eco Green Park ini. \n\nEco Green Park Malang mulai dibuka untuk umum pada tanggal 1 Juli 2012 dan langsung menarik perhatian banyak wisatawan. Dibangun diatas lahan seluas 5 hektar, Eco Green Park memiliki lebih dari 35 wahana dan atraksi yang bisa disaksikan. \n\nSesuai namanya seluruh kawasan Eco Green Park dipenuhi dengan tanaman hijau segar sehingga terasa asri. Selain itu Anda bisa berinteraksi dengan koleksi burung-burung  unik dan cantik yang tersebar hampir ke seluruh kawasan Eco Park.",
      imageCover: "assets/images/eco-green.jpg",
      imageDetails: [
        "assets/images/eco-green-gallery-1.jpg",
        "assets/images/eco-green-gallery-2.jpg",
        "assets/images/eco-green-gallery-3.jpg",
      ]),
  PlaceItems(
      name: "Taman Kemesraan",
      location: "Jl. Tretes, Bendosari, Pujon, Kabupaten Malang",
      openDays: "Setiap hari",
      openTimes: "08.00 - 17.00",
      like: "838",
      description:
          "Taman Kemesraan Pujon ini hadir dengan konsep yang bagus, yaitu menggabungkan keindahan alam dengan edukasi seputar kultur Jawa. Terdapat banyak spot yang bernuansa kultur Jawa, serta tersedia wahana air yang asik dinikmati semisal kolam pemandian yang dilengkapi dengan perahu. \n\nKondisi alam di wisata ini sangat bagus dan terkesan masih sangat alami. Sebab pemandangan alamnya berupa pepohonan yang rindang berpadu dengan sungai mengalir tampak indah dan terjaga kebersihannya. Suasana berada di wisata Taman Kemesraan ini pastinya sangat nyaman, suhunya sangat sejuk serta pemandangan alamnya yang indah dan benar-benar alami. Tentunya sangat memanjakan mata dan bikin liburan semakin menyenangkan.",
      imageCover: "assets/images/taman-kemesraan.jpg",
      imageDetails: [
        "assets/images/taman-kemesraan-gallery-1.jpg",
        "assets/images/taman-kemesraan-gallery-2.jpg",
        "assets/images/taman-kemesraan.jpg",
      ]),
  PlaceItems(
      name: "Bumi Kitiran Batu         ",
      location: "Dusun Binangun, Desa Bumiaji, Kota Batu, Malang",
      openDays: "Setiap hari",
      openTimes: "08.00 - 17.00",
      like: "1004",
      description:
          "Bumi Kitiran Batu merupakan wisata rekreasi dengan hamparan kitiran yang berwarna-warni yaitu kincir angin berukuran kecil. Bumi Kitiran Batu terletak di Desa Bumiaji, Kecamatan Bumiaji, Kota Batu, Jawa Timur. \n\nTempat yang mulanya hanya ladang perkebunan warga kini menjadi tempat wisata kekinian dan cocok untuk berburu foto instagramable. Taman dengan ribuan kincir angin yang berwarna ini menawarkan pemandangan indah berupa Gunung Panderman yang berdiri kokoh juga cocok menjadi latar foto yang menarik. Pengunjung akan disambut sebuah bangunan sederhana dengan pagar bambu. \n\nDi sini pengunjung bisa membeli tiket masuk, yang dibanderol seharga Rp10.000. Dengan harga tersebut, pengunjung sudah bebas menjelajah area di sekitar Bumi Kitiran.",
      imageCover: "assets/images/bumi-kitiran.jpg",
      imageDetails: [
        "assets/images/bumi-kitiran-gallery-1.png",
        "assets/images/bumi-kitiran-gallery-2.jpg",
        "assets/images/bumi-kitiran-gallery-3.jpg",
      ]),
  PlaceItems(
      name: "Bukit Teletubbies                ",
      location: "Bumiaji, Batu                                 ",
      openDays: "Setiap hari",
      openTimes: "24 jam",
      like: "658",
      description:
          "Sesuai dengan namanya, bukit ini terdiri dari beberapa bukit yang tidak terlalu tinggi. Udaranya bersih dan sejuk sebab jauh dari kota yang berpolusi. Di tempat cantik ini ada pemandangan nyaris seperti di film Teletubbies. Wisatawan bisa melihat gundukan-gundukan bukit yang menawan dan hijau. \n\nBukit Teletubbies ini sebenarnya ada di beberapa tempat di wilayah Indonesia. Di kota Malang sendiri, bukit ini berada di dekat Kota Batu. Dari pusat kota Malang, perlu waktu sekitar 40 menit untuk sampai. Caranya bisa dengan kendaraan pribadi seperti motor atau mobil. Bus dan kendaraan umum sebenarnya juga tersedia, jadi wisatawan bisa bebas memilih transportasi apapun yang sesuai. Bukit ini berada di daerah Bumiaji, Kota Batu sekitar 23 kilo meter dari Malang. \n\nHarga Tiket Obyek wisata alam yang menarik ini, tidak memiliki loket. Semua pengunjung bisa datang kapan saja kesini tanpa harus membeli tiket. ",
      imageCover: "assets/images/bukit-teletubbies.jpg",
      imageDetails: [
        "assets/images/bukit-teletubbies-gallery-1.jpg",
        "assets/images/bukit-teletubbies-gallery-2.jpg",
        "assets/images/bukit-teletubbies.jpg",
      ]),
  PlaceItems(
      name: "Goa Pinus              ",
      location: "Gg. Mbah Ba'i, Gunungsari, Kec. Bumiaji, Kota Batu",
      openDays: "Setiap hari",
      openTimes: "07.00 - 17.30",
      like: "2072",
      description:
          "Wisata Goa Pinus Pujon ini adalah salah satu wisata yang hits dan benyak foto-foto di tempat wisata ini beredar di media sosial karena daya tarik utama wisata ini yang memiliki berbagai spot foto yang menarik. Walau terkenal dengan spot fotonya yang bagus-bagus tempat ini diberi nama goa pinus dikarenakan terdapat sebuah goa yang dapat anda temui di lokasi tersebut. \n\nGoa tersebut merupakan bekas galian orang jepang pada zaman dahulu yang memiliki panjang hanya 5 meter dengan tinggi sekitar 1,5 meter dan terdapat pula banyak pohon pinus sehingga tempat wisata ini dinamakan goa pinus. Tempat ini juga memiliki udara yang sejuk dan cocok untuk refreshing menghilangkan penat dari rutinitas keseharian dan sejenak merasakan suasana alam yang indah. \n\nBerbicara tentang harga tiket masuk wisata goa pinus pujon batu ini anda harus mengeluarkan biaya sebesar Rp 10.000 per orang untuk dapat memasuki objek wisata ini dimana nantinya anda perlu membayar lagi untuk gardu pandanganya sebesar Rp 5.000 bila ingin berfoto.",
      imageCover: "assets/images/goa-pinus.jpg",
      imageDetails: [
        "assets/images/goa-pinus-gallery-1.jpg",
        "assets/images/goa-pinus-gallery-2.jpg",
        "assets/images/goa-pinus.jpg",
      ]),
  PlaceItems(
      name: "Malang Night Paradise",
      location:
          "Jl. Graha Kencana Raya Jl. Raya Karanglo No.66, Karanglo, Balearjosari, Kec. Blimbing, Kota Malang",
      openDays: "Setiap hari",
      openTimes: "18.00 - 23.00",
      like: "10554",
      description:
          "Malang Night Paradise menjadi salah satu tempat wisata yang direkomendasikan untuk wisatawan di Malang dan sekitarnya. Malang Night Paradise hadir dengan konsep baru yang berbeda dan tentunya lebih spektakuler. Ini adalah wisata malam yang menyuguhkan wahana menarik dan patut untuk dinikmati, diantaranya seperti; Taman Lampion, Air Terjun Menari, Dino Park, dan lain sebagainya. Bila sebelumnya ada wisata BNS (Batu Nigh Spectacular) di kota Batu, kini Malang Night Paradise hadir dan tak kalah keren. \n\nPara pengunjung yang datang akan langsung disuguhi lampion warna-warni yang cantik dengan berbagai bentuk atau model, seperti bentuk bunga, pohon, binatang, kartun, dan lain-lain. Wisata Malang Night Paradise ini tidak sekedar sebagai tempat untuk liburan dan hangout saja, tetapi juga sebagai event edukasi, pengunjung dapat mengenal berbagai binatang purba dalam bentuk patung, seperti; Spinosaurus, T-Rex dan jenis Dinosaurus lainnya.\n\nAdapun harga tiket masuk reguler sebesar Rp50.000 untuk hari biasa (Senin – Jum’at), sedangkan pada hari libur (Sabtu – Minggu) harga tiket naik menjadi Rp65.000. Ada juga loh penawaran paket reguler + wahana perahu, yakni seharga Rp79.000 (Senin-Jumat), dan Rp100.000 (Sabtu-Minggu).",
      imageCover: "assets/images/malang-night.jpg",
      imageDetails: [
        "assets/images/malang-night-gallery-1.png",
        "assets/images/malang-night-gallery-2.png",
        "assets/images/malang-night-gallery-3.jpg",
      ]),
];
