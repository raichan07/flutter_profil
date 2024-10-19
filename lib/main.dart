import 'package:flutter/material.dart';
import 'Page2.dart'; // Pastikan Page2 sudah diimpor
import 'LoginPage.dart'; // Impor halaman login

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Mulai dengan halaman LoginPage
    ));

// Halaman dashboard/home yang menerima data dari LoginPage
class home extends StatelessWidget {
  final String name;
  final String school;
  final String role;
  final String description;

  const home(
      {Key? key,
      required this.name,
      required this.school,
      required this.role,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(139, 139, 139, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage:
                            AssetImage('assets/images/profil2.jpeg'),
                      ),
                      Text(
                        name, // Munculkan Nama yang diinput
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        school, // Munculkan Sekolah yang diinput
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[450]),
                      ),
                      Text(
                        role, // Munculkan Role yang diinput
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[450]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          description, // Munculkan Deskripsi yang diinput
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[450]),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Rute ke Page2 ketika tombol "See More" ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page2(), // Pindah ke Page2
                            ),
                          );
                        },
                        child: Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
