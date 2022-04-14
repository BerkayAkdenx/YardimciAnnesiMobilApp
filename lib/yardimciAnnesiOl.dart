import 'package:flutter/material.dart';
import 'package:yardimci_annesi_app/login.dart';
import 'package:yardimci_annesi_app/register.dart';

class yardimciAnnesiOl extends StatefulWidget {
  const yardimciAnnesiOl({Key? key}) : super(key: key);

  String get title => "YARDİMCİ ANNESİ OL";

  @override
  State<yardimciAnnesiOl> createState() => _yardimciAnnesiOlState();
}

class _yardimciAnnesiOlState extends State<yardimciAnnesiOl> {

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
              "resimler/yardimciAnnesiOl.jpg",
              width: ekranGenisligi,
              height: ekranYukseligi / 1.5,
            ),
          ),
          Text(
            "YARDIMCI ANNESİ MİSİNİZ ?",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
                    },
                    child: Text("KAYIT OL",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Text("YARDİMCİ ANNEYİM",
                        style: TextStyle(fontSize: ekranGenisligi / 29)),
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
