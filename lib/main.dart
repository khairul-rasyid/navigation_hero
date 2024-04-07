import 'package:flutter/material.dart';
import 'package:navigation_hero/destination.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khairul Rasyid',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 134, 4)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flora Kalimantan'),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tumbuhan = [
    {
      "nama": "Balau",
      "gambar": "balau.png",
      "deskripsi":
          "Balau mempunyai nama botanis Shore spp. dan Hopea spp., famili Dipterocarpaceae. Tinggi pohon 20 - 50 m, panjang batang bebas cabang 10 - 35 m, diameter sampai 160 cm, banir dapat mencapai tinggi 3,5 m."
    },
    {
      "nama": "Belangeran",
      "gambar": "belangeran.png",
      "deskripsi":
          "Belangeran mempunyai nama botanis Shorea be/angeran (Korth.) Burck, famili Dipterocarpaceae. Di Kalimantan belangeran dikenal juga dengan nama balangiran, belangiran, kahoi, kahul, dan kawi. "
    },
    {
      "nama": "Bengkirai",
      "gambar": "bengkirai.png",
      "deskripsi":
          "Bangkirai mempunyai nama botanis Shorea /aevis Ridl. (syn. S.laevifolia Endert), famili Dipterocarpaceae. Bangkirai dikenal juga dengan sebutan anggelam, dan benuas. Penyebaran bangkirai adalah seluruh Kalimantan."
    },
    {
      "nama": "Kapur",
      "gambar": "kapur.png",
      "deskripsi":
          "Kapur mempunyai nama botanis  Dryoba/anops  spp., famili Dipterocarpaceae, terutama D. aromatica Gaertn. (Kapur singkel). Kapur mempunyai nama daerah diantaranya ampadu, ampalang, awang tanet, bayau, belaka."
    },
    {
      "nama": "Kempas",
      "gambar": "kempas.png",
      "deskripsi":
          "Kempas  mempunyai  nama  botanis Koompassia  malaccensis Maing., famili Caesa/piniaceae. Nama lain kempas di daerah Kalimantan diantaranya ampas, bengaris, berniung, empas, gemaris, gembris, hampas, impas, kampas, kempas, mengerih, menggeris, pah, sabanting, dan umpas."
    },
    {
      "nama": "Keruing",
      "gambar": "keruing.png",
      "deskripsi":
          "Keruing mempunyai nama botanis 0ipterocarpus spp., famili Dipterocarpaceae. Nama lain keruing di daerah Kalimantan diantaranya anderi, ansurai, karup, keladan, kerup, ketanggang, tempudau, dan tempurau."
    },
    {
      "nama": "Mentibu",
      "gambar": "mentibu.png",
      "deskripsi":
          "Mentibu mempunyai nama botanis Dacty/oc/adus stenostachys Oliv., famili Me/astomataceae. Tinggi pohon 30 - 40 m, panjang batang bebas cabang 15- 25 m, diameter 50 - 100 cm, tajuk hampir bulat dan bercabang besar, batang agak berlekuk-lekuk."
    },
    {
      "nama": "Meranti Merah",
      "gambar": "meranti_merah.png",
      "deskripsi":
          "Meranti merah mempunyai nama botanis Shore spp., famili Dipterocarpaceae. Tinggi pohon dapat mencapai 50 m, panjang batang bebas cabang sampai 30 m, diameter umumnya sekitar 100 cm, banir S. Leprosula berukuran tinggi 3,5 m lebar 2,5 m dan tebal 20 cm, kulit luar berwarna kelabu atau coklat, tebal kulit lebih kurang 5 mm."
    },
    {
      "nama": "Meranti Putih",
      "gambar": "meranti_putih.png",
      "deskripsi":
          "Meranti putih mempunyai nama botanis Shorea spp., famili Dipterocarpaceae. Tinggi pohon 12 - 55 m, panjang batang bebas cabang 8 - 37 m, diameter dapat mencapai 180 cm, bentuk batang lurus dan silindris dengan banir yang dapat mencapai tinggi 3,5 m."
    },
    {
      "nama": "Merbau",
      "gambar": "merbau.png",
      "deskripsi":
          "Merbau mempunyai nama botanis lntsia spp., famili Caesa/piniaceae. Di Kalimantan kayu ini dikenal juga dengan nama daerah alai, anglai, ipil, jumelai, maharau. Tinggi pohon dapat mencapai 40 m dengan panjang batang bebas cabang 4 - 30 m, diameter sampai 100 cm, tinggi banir sampai 4 m dengan lebar sampai 4 m."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  final nama = tumbuhan[index]['nama'];
                  final gambar = tumbuhan[index]['gambar'];
                  final deskripsi = tumbuhan[index]['deskripsi'];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DestinationPage(
                                    nama: nama,
                                    gambar: gambar,
                                    deskripsi: deskripsi,
                                    index: index,
                                  )));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Card(
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Hero(
                                // ignore: prefer_interpolation_to_compose_strings
                                tag: 'image$index',
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    "images/" + gambar,
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 130,
                                  ),
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 12)),
                              Text(nama,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        )),
                  );
                }),
          ),
        ));
  }
}
