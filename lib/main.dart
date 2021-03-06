import 'package:flutter/material.dart';
import 'package:yardimci_annesi_app/yardimciAnnesiOl.dart';
import 'package:yardimci_annesi_app/yardimciAnnesiBul.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Yardimci Annesi Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'YARDIMCI ANNESİ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranGenisligi = ekranBilgisi.size.width;
    double ekranYukseligi = ekranBilgisi.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ekranYukseligi / 100, bottom: ekranYukseligi / 100),
            child: Image.asset(
              "resimler/main.jpg",
              width: ekranGenisligi,
              height: ekranYukseligi / 1.5,
            ),
          ),
          Text(
            "Tıpkı Kendi Anneniz Gibi",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi / 25,
              fontStyle: FontStyle.italic,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: ekranYukseligi / 30),
                child: SizedBox(
                  width: ekranGenisligi / 4,
                  height: ekranYukseligi / 10,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => yardimciAnnesiOl()));
                    },
                    child: Text("Yardimci Annesi Ol",
                        style: TextStyle(fontSize: ekranGenisligi / 25)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: ekranGenisligi / 15, right: ekranGenisligi / 15)),
              Padding(
                padding: EdgeInsets.only(bottom: ekranYukseligi / 30),
                child: SizedBox(
                  width: ekranGenisligi / 4,
                  height: ekranYukseligi / 10,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => yardimciAnnesiBul()));
                    },
                    child: Text("Yardimci Annesi Bul",
                        style: TextStyle(fontSize: ekranGenisligi / 25)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
