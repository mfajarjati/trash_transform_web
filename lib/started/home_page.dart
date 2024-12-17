import 'package:flutter/material.dart';
import 'navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF034833),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(
                left: 70,
                right: 70,
                top: 90,
              ),
              color: const Color(0xFF034833),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Selamat datang di ',
                                    style: TextStyle(
                                      fontFamily: 'popins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Trash Transform',
                                    style: TextStyle(
                                      fontFamily: 'popins',
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF83CD20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(right: 18.0),
                              child: Text(
                                'Sistem cerdas untuk klasifikasi dan daur ulang sampah dengan menggunakan sensor dan AI untuk mengidentifikasi jenis sampah secara akurat sehingga pengguna mendapatkan poin yang dapat ditukarkan dengan uang, dan sampah yang telah terkategorisasi dijual ke perusahaan daur ulang, sehingga dapat berkontribusi pada keberlanjutan lingkungan, ekonomi sirkular, dan kesadaran pengelolaan sampah efisien.',
                                style: TextStyle(
                                  fontFamily: 'popins',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: StatefulBuilder(
                                    builder: (context, setState) => InkWell(
                                      onHover: (hovering) {
                                        setState(() {});
                                      },
                                      child: ElevatedButton.icon(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          // ignore: dead_code
                                          backgroundColor:
                                              const Color(0xFF034833),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 30,
                                            vertical: 15,
                                          ),
                                          side: const BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        icon: const Text(
                                          'Read More',
                                          style: TextStyle(
                                            fontFamily: 'popins',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        label: const Icon(
                                          size: 16,
                                          Icons.arrow_downward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                ElevatedButton.icon(
                                  iconAlignment: IconAlignment.end,
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFF034833),
                                  ),
                                  icon: const Text(
                                    'Watch Our Video',
                                    style: TextStyle(
                                      fontFamily: 'popins',
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  label: const Icon(
                                    size: 22,
                                    Icons.play_circle_filled_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (constraints.maxWidth > 800)
                        const Flexible(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: Image(
                                height: 550,
                                width: 550,
                                image: AssetImage('assets/images/sampah.png')),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //   ),
            //   padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            //   child: LayoutBuilder(
            //     builder: (context, constraints) {
            //       // Determine if the screen width is less than 600 pixels
            //       bool isSmallScreen = constraints.maxWidth < 600;

            //       return GridView.count(
            //         crossAxisCount: isSmallScreen ? 1 : 2,
            //         crossAxisSpacing: 50,
            //         mainAxisSpacing: 50,
            //         shrinkWrap: true,
            //         physics: const NeverScrollableScrollPhysics(),
            //         children: [
            //           buildCard(
            //             'Kumpulkan Sampah',
            //             'Kumpulkan Sampahmu dan bawa ke mesin Trash Transform atau lokasi yang ditentukan',
            //             'assets/images/howtoicon1.png',
            //             'assets/images/howto1.png',
            //           ),
            //           buildCard(
            //             'Dapatkan Point',
            //             'Setiap sampah yang kamu buang akan memberimu point yang otomatis masuk ke akunmu',
            //             'assets/images/howtoicon2.png',
            //             'assets/images/howto2.png',
            //           ),
            //           buildCard(
            //             'Klasifikasi Otomatis',
            //             'Teknologi AI kami akan mengidentifikasi dan memisahkan sampah berdasarkan jenisnya secara otomatis',
            //             'assets/images/howtoicon3.png',
            //             'assets/images/howto3.png',
            //           ),
            //           buildCard(
            //             'Tukar Point',
            //             'Point yang dikumpulkan olehmu dapat ditukarkan dengan uang digital pada aplikasi kami',
            //             'assets/images/howtoicon4.png',
            //             'assets/images/howto4.png',
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
      String title, String description, String iconPath, String image) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey[300],
            child: Image.asset(image),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  iconPath,
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
