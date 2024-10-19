import 'package:flutter/material.dart';
import 'LoginPage.dart'; // Import halaman login

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali
          },
        ),
        title: Text("Profile"),
        backgroundColor: Colors.grey,
        actions: [
          // Tambahkan tombol Logout di AppBar
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigasi ke halaman login dan gantikan halaman ini
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Avatar bagian atas
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/profil.jpg"),
            ),
            SizedBox(height: 10.0),
            Text(
              "Raichan Dinta Ramdhan",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Kartu 'About'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color.fromARGB(255, 172, 172, 172),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya adalah seorang junior back-end developer yang saat ini masih menempuh Sekolah Menengah Kejuruan di SMK Wikrama, dengan minat besar dalam coding dan pemecahan masalah.",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Kartu 'History'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "History",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya mulai tertarik dengan pemrograman saat belajar bahasa pemograman di sekolah. Sejak itu, saya mendalami pembelajaran tentang programming dan terus mengasah skil saya dalam bidang tersebut. Saya memiliki pemahaman yang cukup baik tentang HTML, CSS, C++, PHP dan JavaScript (Pemula), serta berpengalaman menggunakan framework seperti Laravel.",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Kartu 'Skill' dengan header berwarna
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  1, // 100% dari lebar layar
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bagian header "Skill" dengan warna
                    Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 143, 140,
                          131), // Warna latar belakang untuk header "Skill"
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Skill",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // Bagian isi skill
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("• HTML & CSS"),
                          Text("• C++"),
                          Text("• PHP"),
                          Text("• MYSQL"),
                          Text("• JavaScript"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
